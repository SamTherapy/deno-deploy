FROM denoland/deno:2.5.3 AS base


RUN deno install -gArf jsr:@deno/deployctl

COPY run.ts /bin/
RUN chmod +x /bin/run.ts && deno cache /bin/run.ts

USER deno
CMD ["/bin/run.ts"]
