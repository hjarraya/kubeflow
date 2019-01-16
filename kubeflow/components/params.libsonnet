{
  global: {
    // User-defined global parameters; accessible to all component and environments, Ex:
    // replicas: 4,
  },
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    metacontroller: {
      image: "metacontroller/metacontroller:v0.3.0",
      name: "metacontroller",
    },
    profiles: {
      image: "metacontroller/jsonnetd@sha256:25c25f217ad030a0f67e37078c33194785b494569b0c088d8df4f00da8fd15a0",
      name: "profiles",
    },
    jupyter: {
      accessLocalFs: "false",
      gcpSecretName: "user-gcp-sa",
      image: "gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1",
      jupyterHubAuthenticator: "null",
      name: "jupyter",
      notebookGid: "-1",
      notebookUid: "-1",
      platform: "none",
      rokSecretName: "secret-rok-{username}",
      serviceType: "ClusterIP",
      storageClass: "null",
      ui: "default",
      useJupyterLabAsDefault: "false",
    },
    argo: {
      executorImage: "argoproj/argoexec:v2.2.0",
      name: "argo",
      uiImage: "argoproj/argoui:v2.2.0",
      workflowControllerImage: "argoproj/workflow-controller:v2.2.0",
    },
    katib: {
      katibUIImage: "gcr.io/kubeflow-images-public/katib/katib-ui:v0.4.0",
      metricsCollectorImage: "gcr.io/kubeflow-images-public/katib/metrics-collector:v0.4.0",
      name: "katib",
      studyJobControllerImage: "gcr.io/kubeflow-images-public/katib/studyjob-controller:v0.4.0",
      suggestionBayesianOptimizationImage: "gcr.io/kubeflow-images-public/katib/suggestion-bayesianoptimization:v0.4.0",
      suggestionGridImage: "gcr.io/kubeflow-images-public/katib/suggestion-grid:v0.4.0",
      suggestionHyperbandImage: "gcr.io/kubeflow-images-public/katib/suggestion-hyperband:v0.4.0",
      suggestionRandomImage: "gcr.io/kubeflow-images-public/katib/suggestion-random:v0.4.0",
      vizierCoreImage: "gcr.io/kubeflow-images-public/katib/vizier-core:v0.4.0",
      vizierCoreRestImage: "gcr.io/kubeflow-images-public/katib/vizier-core-rest:v0.4.0",
      vizierDbImage: "mysql:8.0.3",
    },
  },
}
