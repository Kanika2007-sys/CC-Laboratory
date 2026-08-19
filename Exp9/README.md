# Ex.No 09 – Run a Container from Docker Hub

## Aim
Run a container from Docker Hub.

## Files
- `commands.sh` — commands to run an Ubuntu container with `top`, inspect it
  with `docker container exec`, pull and run `nginx` and `mongo:4.4` from
  Docker Hub, and clean up with `docker system prune`.
- `output.txt` — console output for each step.

## Result
Containers were successfully pulled and run from Docker Hub (`ubuntu`,
`nginx`, `mongo:4.4`), verified via `curl`, and cleaned up.
