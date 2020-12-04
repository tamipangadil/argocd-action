ARG ARGOCD_VERSION=1.7.4

FROM argoproj/argocd:v${ARGOCD_VERSION} AS argocd

LABEL "com.github.actions.name"="GitHub Action for ArgoCD"
LABEL "com.github.actions.description"="Wraps the ArgoCD CLI to enable common ArgoCD commands."
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/hipages/argocd-actions"
LABEL "homepage"="https://github.com/hipages/argocd-actions"

COPY src/ /

ENTRYPOINT ["/entrypoint.sh"]
