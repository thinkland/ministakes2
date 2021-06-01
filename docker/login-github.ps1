# docker login to github registry:

# echo "${{ secrets.GITHUB_TOKEN }}" | docker login docker.pkg.github.com -u ${{ github.actor }} --password-stdin

cat secrets/container-pat.token | docker login ghcr.io -u thinkland --password-stdin
