# Usage

This image contains the necessary fluentd plugins to send logs in the SEKOIA.IO
format.

In order to deploy a service to send logs from your kubernetes cluster to
SEKOIA.IO, you can use our yaml file:

```bash
kubectl apply -f kubernetes/deployment.yaml
```

Then, to forward you events to our platform, you just have to put the following
annotation to a pod: 

```yaml
sekoia-io-intake-key: YOUR_INTAKE_KEY
```

You can obtain YOUR_INTAKE_KEY in our web interface. The `intake key` is
specific per format. You'd have to put annotations for each type of service you
want to forward.
