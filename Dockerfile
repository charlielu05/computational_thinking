FROM julia:1.6.0

RUN apt-get update
COPY install.jl /
RUN julia install.jl
CMD julia -e "using Pluto;Pluto.run(host=\"0.0.0.0\", port=8090)"
