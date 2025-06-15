APP_NAME = Forgejo
APP_SLOGAN = Beyond coding. We Forge.
RUN_USER = git
WORK_PATH = /data
RUN_MODE = prod

[database]
DB_TYPE = mysql
HOST = ${DB_HOST}:${DB_PORT}
NAME = ${DB_NAME}
USER = ${DB_USER}
PASSWD = ${DB_PASS}
SSL_MODE = disable
LOG_SQL = false

[repository]
ROOT = /data/git/repositories

[server]
SSH_DOMAIN = ${FORGEJO_DOMAIN}
DOMAIN = ${FORGEJO_DOMAIN}
HTTP_PORT = ${FORGEJO_PORT}
ROOT_URL = http://${FORGEJO_DOMAIN}:${FORGEJO_PORT}/
APP_DATA_PATH = /data
DISABLE_SSH = false
SSH_PORT = ${FORGEJO_SSH_PORT}
LFS_START_SERVER = true
LFS_JWT_SECRET = ${FORGEJO_LFS_JWT_SECRET}
OFFLINE_MODE = true
START_SSH_SERVER = true

[lfs]
PATH = /data/lfs

[mailer]
ENABLED = false

[service]
REGISTER_EMAIL_CONFIRM = false
ENABLE_NOTIFY_MAIL = false
DISABLE_REGISTRATION = false
ALLOW_ONLY_EXTERNAL_REGISTRATION = false
ENABLE_CAPTCHA = false
REQUIRE_SIGNIN_VIEW = false
DEFAULT_KEEP_EMAIL_PRIVATE = false
DEFAULT_ALLOW_CREATE_ORGANIZATION = true
DEFAULT_ENABLE_TIMETRACKING = true
NO_REPLY_ADDRESS = noreply@${FORGEJO_DOMAIN}

[openid]
ENABLE_OPENID_SIGNIN = true
ENABLE_OPENID_SIGNUP = true

[cron.update_checker]
ENABLED = true

[session]
PROVIDER = file

[log]
MODE = file
LEVEL = info
ROOT_PATH = /data/log

[repository.pull-request]
DEFAULT_MERGE_STYLE = merge

[repository.signing]
DEFAULT_TRUST_MODEL = committer

[security]
INSTALL_LOCK = true
INTERNAL_TOKEN = ${FORGEJO_INTERNAL_TOKEN}
PASSWORD_HASH_ALGO = pbkdf2_hi

[oauth2]
JWT_SECRET = ${FORGEJO_JWT_SECRET}
