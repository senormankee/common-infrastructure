if [[ $# -eq 0 ]] ; then
    echo 'Expected single argument of dev / test1 / test2 / staging / live'
    exit 0
fi


if [ $1 = 'dev' ]
  then
  echo "Setting Dev"
  export AWS_ACCOUNT_ID="083157458968"
  export FLUENTBIT_ROLE_ARN=arn:aws:iam::083157458968:role/devFluentBitAccess
  export TF_VAR_aws_account_id=083157458968
  export CI_ENVIRONMENT_NAME=dev
  export TF_VAR_gitlab_runner_params='{
    "GitlabRunnerDockerPrivileged" : true
  }'
fi
