#!/bin/bash

cat > gitlab-runner.service << "EOF"

[Unit]
Description=GitLab Runner
ConditionFileIsExecutable=/usr/bin/gitlab-runner

After=syslog.target network.target

[Service]
StartLimitInterval=5
StartLimitBurst=10
ExecStart=/usr/bin/gitlab-runner "run" "--working-directory" "/home/gitlab-runner" "--config" "/etc/gitlab-runner/config.toml" "--service" "gitlab-runner" "--user" "root"







Restart=always

RestartSec=120
EnvironmentFile=-/etc/sysconfig/gitlab-runner

[Install]
WantedBy=multi-user.target
EOF

sudo mv ./gitlab-runner.service /etc/systemd/system/gitlab-runner.service

sudo systemctl daemon-reload

sudo systemctl stop gitlab-runner

sudo systemctl start gitlab-runner

sudo echo "gitlab-runner ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers #run gitlab-runner without password

echo "Gitlab-Runner can be executed as root"
