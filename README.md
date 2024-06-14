<div align="center">
  <a href="https://koyeb.com">
    <img src="https://www.koyeb.com/static/images/icons/koyeb.svg" alt="Logo" width="80" height="80">
  </a>
  <h3 align="center">Koyeb Serverless Platform</h3>
  <p align="center">
    Deploy Fooocus on Koyeb
    <br />
    <a href="https://koyeb.com">Learn more about Koyeb</a>
    ·
    <a href="https://koyeb.com/docs">Explore the documentation</a>
    ·
    <a href="https://koyeb.com/tutorials">Discover our tutorials</a>
  </p>
</div>


## About Koyeb and the Fooocus example application

Koyeb is a developer-friendly serverless platform to deploy apps globally. No-ops, servers, or infrastructure management.

This repository is designed to show how to deploy a Fooocus instance to Koyeb.  The included `Dockerfile` modifies the behavior of the [official container image](https://github.com/lllyasviel/Fooocus/pkgs/container/fooocus) to add authentication.  If the `FOOOCUS_USERNAME` and `FOOOCUS_PASSWORD` variables are set, the Fooocus instance will require authentication.

## Getting Started

Follow the steps below to deploy a Fooocus instance to your Koyeb account.

### Requirements

To use this repository, you need:

* A Koyeb account to build the `Dockerfile` and deploy it to the platform.  If you don't already have an account, you can [sign-up for free](https://app.koyeb.com/auth/signup).
* Access to GPU Instances on Koyeb. [Join the preview today](https://www.koyeb.com/ai) to gain access.

### Deploy using the Koyeb button

The fastest way to deploy a Fooocus instance is to click the **Deploy to Koyeb** button below.

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy?name=fooocus-test&type=git&repository=koyeb%2Fexample-fooocus&branch=main&builder=dockerfile&instance_type=gpu-nvidia-rtx-4000-sff-ada&env%5BCMDARGS%5D=--listen+--port%3D%7B%7B+PORT+%7D%7D&ports=8000%3Bhttp%3B%2F)

Clicking on this button brings you to the Koyeb App creation page with most of the settings pre-configured to launch this application.  You can optionally add the following variables to configure authentication:

- `FOOOCUS_USERNAME`: The username you want to use to authenticate with the Fooocus instance.
- `FOOOCUS_PASSWORD`: The password you want to use to authenticate with the Fooocus instance.

Additionally, open the **Health checks** section and set the **Grace period** to 300 seconds to allow time for Fooocus to fetch LLM models from Hugging Face and initialize.

_To modify this application example, you will need to fork this repository. Checkout the [fork and deploy](#fork-and-deploy-to-koyeb) instructions._

### Fork and deploy to Koyeb

If you want to customize and enhance this application, you need to fork this repository.

If you used the **Deploy to Koyeb** button, you can simply link your service to your forked repository to be able to push changes.  Alternatively, you can manually create the application as described below.

On the [Koyeb Control Panel](https://app.koyeb.com/), on the **Overview** tab, click the **Create Web Service** button to begin.

1. Select **GitHub** as the deployment method.
2. Choose the repository containing your application code.
3. Expand the **Environment variables** section and click **Bulk edit** to configure new environment variables.  Paste the following variable definitions in the box:
   ```
   CMDARGS=--listen --port={{ PORT }}
   FOOOCUS_USERNAME=
   FOOOCUS_PASSWORD=
   ```

    Fill out the values as described in the previous section.

4. In the **Instance** section, select the **GPU** category and choose **RTX-4000-SFF-ADA**.
5. In the **Health checks** section, set the **Grace period** to 300 seconds. This will provide time for Fooocus to download the appropriate models from Hugging Face and initialize the server.
6. Click **Deploy**.

The repository will be pulled, built, and deployed on Koyeb. Once the deployment is complete, it will be accessible using the Koyeb subdomain for your service.

## Contributing

If you have any questions, ideas or suggestions regarding this application sample, feel free to open an [issue](//github.com/koyeb/example-fooocus/issues) or fork this repository and open a [pull request](//github.com/koyeb/example-fooocus/pulls).

## Contact

[Koyeb](https://www.koyeb.com) - [@gokoyeb](https://twitter.com/gokoyeb) - [Slack](http://slack.koyeb.com/)
