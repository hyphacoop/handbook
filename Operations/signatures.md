# Signatures

## Signing internal documents

The Board of Directors uses PGP signatures to digitally sign [resolutions](https://github.com/hyphacoop/organizing/tree/master/resolutions).
We recommend using the [GnuPG](https://gnupg.org) command line, but you can also use the [Keybase](https://keybase.io) command line, to sign and verify resolutions.

- Signing with **GnuPG**:

    ```
    $ gpg --sign --armor \
      --output resolution-001.md.github_handle.asc \
      resolution-001.md
    ```

    with **Keybase**:

    ```
    $ keybase pgp sign \
      --infile resolution-001.md \
      --outfile resolution-001.md.github_handle.asc
    ```
- Verifying with **GnuPG**:

    ```
    $ gpg --verify resolution-001.md.github_handle.asc
    ```

    with **Keybase**:

    ```
    $ keybase pgp verify \
      --infile resolution-001.md.github_handle.asc
    ```

The text of the signed document is embedded in the signature file, so you can drop any signature file `resolution-XXX.md.github_handle.asc` into [keybase.io/verify](https://keybase.io/verify) to verify a signature.
For example, you can try verifying [resolution-001.md.benhylau.asc](https://github.com/hyphacoop/organizing/blob/master/resolutions/resolution-001.md.benhylau.asc).

_Note: for submitting resolutions to the Government, you will need to use an additional signing process as if resolutions are external documents. Previously this was achieved by using `pandoc` to build a PDF package with the resolution (without including PGP signatures) and entering that to HelloSign (see [organizing/#385](https://github.com/hyphacoop/organizing/issues/385) for context)._

## Signing external documents

Members also use other tools such as [HelloSign](http://link.hypha.coop/inventory#HelloSign) for signing client-facing documents. 

See [this related GitHub issue](https://github.com/hyphacoop/organizing/issues/195#issuecomment-580393377) for an example of prior usage.
