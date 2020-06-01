# aws auth

resource "null_resource" "executor" {
  depends_on = ["aws_eks_cluster.cluster"]

  provisioner "local-exec" {
    working_dir = "${path.module}"

    command = <<EOS
echo "${null_resource.executor.triggers.aws_auth}"; \
echo ""
echo "# apply aws auth"
echo "kubectl apply -f aws_auth.yaml"
EOS

    interpreter = var.local_exec_interpreter
  }

  triggers = {
    aws_auth    = "${data.template_file.aws_auth.rendered}"
  }
}
