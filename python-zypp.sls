repolist:
  cmd.run:
    - name: ls -la /etc/zypp/repos.d

python-zypp:
  pkg.installed:
    - refresh: true
    - name: python-zypp
