import os
import sys
import click
import uvicorn


@click.group()
def cli():
    """
    Creator Firebase CLI

    🚀🎬 Flexible, efficient, and scalable toolbox for editing and dubbing, unleashing creative potential.

    https://github.com/xiesx123/RewardHub
    """


@cli.command(help="启动服务 (Start service)")
@click.option("--host", default="0.0.0.0", help="Host to bind to")
@click.option("--port", default=8000, type=int, help="Port to bind to")
@click.option("--debug", is_flag=True, default=False, help="Enable debug mode with auto-reload")
def start(host: str, port: int, debug: bool):
    # spawn
    import multiprocessing as mp

    mp.set_start_method("spawn", force=True)
    # args
    if "REBOOT_ARGS" not in os.environ:
        import json

        os.environ["REBOOT_ARGS"] = json.dumps(sys.argv)

    click.echo(f"🚀 Starting service... http://{host}:{port}")
    uvicorn.run("src.main:asgi", host=host, port=port, reload=debug)


if __name__ == "__main__":
    cli()
