# Sensitive Data

In general, most members prefer not to use third-party SaaS services, like Google Drive, for storing sensitive information.

We store **short strings** (like SINs or codes) as password entries in Bitwarden. These entries should be shared with both a privileged _group_ that needs access (e.g., Finance WG) and the _individual_.

If we must **store sensitive docs** (like PDFs) in a shared drive for convenience (e.g., Google Drive),
we first encrypt them with a password.
We keep this in Bitwarden under the entry `Shared Drive: Encrypted Files`.
All employees can access this password.
Simpler encryption schemes are preferred, for example, default PDF encryption.
We recommend any secured `file.pdf` be renamed to `file.encrypted.pdf` for easy discovery.

As a last resort for sensitive docs, a member can choose to have the document **printed and stored** in a folder in the office.
