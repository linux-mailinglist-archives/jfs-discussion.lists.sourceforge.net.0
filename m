Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A43E5144
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Oct 2019 18:32:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1iO2VP-0008Uq-Ub; Fri, 25 Oct 2019 16:32:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <adilger@dilger.ca>) id 1iN2lW-0006m3-Ch
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Oct 2019 22:36:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:To:Cc:In-Reply-To:Date:Subject:
 Mime-Version:Content-Type:Message-Id:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jdSjvTdb7YhhV+yeBoGT2uoOFpXOTdsEt8mUL1v5JjU=; b=mkOCt3Do5JGjtCbphA3PpAXTi
 wD2KcxabsOEtXip1mpV38GExuQtv7NcaNEWyrTfFzx7VDlP9cjvfg81Y5/nBWgTlMz4QF+ht76Lg4
 kISgbZmuV8eM7XLc/JuuEgQbzCEW1R1gr7sXt0JLGLPbkoUvXOlIaGDMH5MPIW/pm/5DQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Content-Type:
 Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jdSjvTdb7YhhV+yeBoGT2uoOFpXOTdsEt8mUL1v5JjU=; b=DPeAmZ5oEpfh5y4aMVDO/PAo8d
 DsND4Gn690FFI/dN6z1GdmH1AMFr3VkFLGhYDSy8CUHyJZv0GqMEdtq3SH3kkYtNvhYFnQSSimsO6
 R4Wqb6XvV7GfhzFoZdXXIVSVONC2kZYHe8Ovo+NO9b6GvRf7y+bVFylWahRLqFW5feYk=;
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iN2lP-00HGZW-64
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Oct 2019 22:36:34 +0000
Received: by mail-pg1-f196.google.com with SMTP id 23so10839650pgk.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 22 Oct 2019 15:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dilger-ca.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=jdSjvTdb7YhhV+yeBoGT2uoOFpXOTdsEt8mUL1v5JjU=;
 b=XIkqrxaAVGv4cKdfDL9k/xAlmXBfmv2xaqBwDFkiO+RuiaJ/qx8Qv68C18O/MO1irW
 Cy3Vn+tIJxOtFj8DY52CQH0sqz1B3iiTZccOjh0yUYyHLsKbUqIOJZkP1hpBi5FJn608
 BEKbvyyNE55qhvNvrbZH2IZmNn1WRfEs8EFa630Z7qZk27nOSVksTd9wxV/XGh89QoMm
 Za0X342Laxsi4tJ3eJWdVY07aJeei3nhk9yeONMbDuwXBHxa9DmHFXabN91oSXoIjD1+
 8erSnFeO/EhdCZAlrBE7LptFLs02TiPVVGY+Laj64nj95GyisCNv2t0bm1swjOyHxZ8j
 6L/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=jdSjvTdb7YhhV+yeBoGT2uoOFpXOTdsEt8mUL1v5JjU=;
 b=IHcpzjirVqKwJUkednr4tSJmbVOVwzNjzsxB+Xibg4JQHXHiI+4AVFDtIr60hcIyLn
 trYccmt5u/HTKsC++ozBp+9OfqkFWjWGAOCIMLmreM04nsJ6+wOBivqoZIyOwG6Wr72+
 JQ7xhwcqZTh3k5k8l7SOx6XtaYXxOzofxAPEFuDqVuwRwxpEllG2OWOPGnIY9k3opNv6
 c97Mm6NqOB7ow3K9JhMgVvW21SelzQrfvRT+Q61ygv6NWPqQZx/QweymLgc+0rOdG2P8
 Lwg69+wyW4UL7yMeluc44zoaNiLtQogXekcLtsZcGF1e6SyqzOj178Q1sPLya1VxRSup
 l0KA==
X-Gm-Message-State: APjAAAXVL1pluqTtVSagjW6Y8aR+mGhplijSAdmLniMAbrG4N8pRuWqo
 L6ZfqF+lPq/zozcE/SSZ9iNRpQ==
X-Google-Smtp-Source: APXvYqyCGFGpT2C3cY7XT0d1Dal+bVUH3K7BRELFdnAX59mbUm04n1z8zWdaK4LGbMaAkUt/N9526w==
X-Received: by 2002:a17:90a:a60f:: with SMTP id
 c15mr7467310pjq.18.1571782451665; 
 Tue, 22 Oct 2019 15:14:11 -0700 (PDT)
Received: from cabot-wlan.adilger.int (S0106a84e3fe4b223.cg.shawcable.net.
 [70.77.216.213])
 by smtp.gmail.com with ESMTPSA id r24sm21302038pfh.69.2019.10.22.15.13.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 15:14:10 -0700 (PDT)
From: Andreas Dilger <adilger@dilger.ca>
Message-Id: <8CE5B6E8-DCB7-4F0B-91C1-48030947F585@dilger.ca>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Tue, 22 Oct 2019 16:13:53 -0600
In-Reply-To: <20191022204453.97058-2-salyzyn@android.com>
To: Mark Salyzyn <salyzyn@android.com>
References: <20191022204453.97058-1-salyzyn@android.com>
 <20191022204453.97058-2-salyzyn@android.com>
X-Mailer: Apple Mail (2.3273)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: android.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iN2lP-00HGZW-64
X-Mailman-Approved-At: Fri, 25 Oct 2019 16:32:03 +0000
Subject: Re: [Jfs-discussion] [PATCH v14 1/5] Add flags option to get xattr
 method paired to __vfs_getxattr
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Hugh Dickins <hughd@google.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Mike Marshall <hubcap@omnibond.com>, James Morris <jmorris@namei.org>,
 devel@lists.orangefs.org, Eric Van Hensbergen <ericvh@gmail.com>,
 Joel Becker <jlbec@evilplan.org>, Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jan Kara <jack@suse.com>, Casey Schaufler <casey@schaufler-ca.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Kleikamp <shaggy@kernel.org>,
 linux-doc@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 Mimi Zohar <zohar@linux.ibm.com>, CIFS <linux-cifs@vger.kernel.org>,
 Paul Moore <paul@paul-moore.com>, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Eric Sandeen <sandeen@sandeen.net>, kernel-team@android.com,
 Chao Yu <chao@kernel.org>, selinux@vger.kernel.org,
 Brian Foster <bfoster@redhat.com>, reiserfs-devel@vger.kernel.org,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Jonathan Corbet <corbet@lwn.net>, linux-f2fs-devel@lists.sourceforge.net,
 Benjamin Coddington <bcodding@redhat.com>, linux-integrity@vger.kernel.org,
 Martin Brandenburg <martin@omnibond.com>, Chris Mason <clm@fb.com>,
 linux-mtd@lists.infradead.org, linux-afs@lists.infradead.org,
 Miklos Szeredi <miklos@szeredi.hu>, Ilya Dryomov <idryomov@gmail.com>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 Eric Paris <eparis@parisplace.org>, ceph-devel <ceph-devel@vger.kernel.org>,
 Gao Xiang <xiang@kernel.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 samba-technical <samba-technical@lists.samba.org>,
 linux-xfs <linux-xfs@vger.kernel.org>, Bob Peterson <rpeterso@redhat.com>,
 Tejun Heo <tj@kernel.org>, linux-erofs@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>, ocfs2-devel@oss.oracle.com,
 jfs-discussion@lists.sourceforge.net, Jan Kara <jack@suse.cz>,
 Eric Biggers <ebiggers@google.com>,
 Dominique Martinet <asmadeus@codewreck.org>,
 overlayfs <linux-unionfs@vger.kernel.org>, David Howells <dhowells@redhat.com>,
 linux-mm <linux-mm@kvack.org>, Andreas Gruenbacher <agruenba@redhat.com>,
 Sage Weil <sage@redhat.com>, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, cluster-devel@redhat.com,
 Steve French <sfrench@samba.org>, v9fs-developer@lists.sourceforge.net,
 Bharath Vedartham <linux.bhar@gmail.com>, Jann Horn <jannh@google.com>,
 ecryptfs@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 Dave Chinner <dchinner@redhat.com>, David Sterba <dsterba@suse.com>,
 Artem Bityutskiy <dedekind1@gmail.com>, netdev@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Tyler Hicks <tyhicks@canonical.com>,
 linux-security-module@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>,
 David Woodhouse <dwmw2@infradead.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: multipart/mixed; boundary="===============4378047869609478884=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--===============4378047869609478884==
Content-Type: multipart/signed;
 boundary="Apple-Mail=_37420EF0-273E-43F4-97D0-62F6238C01CC";
 protocol="application/pgp-signature"; micalg=pgp-sha256


--Apple-Mail=_37420EF0-273E-43F4-97D0-62F6238C01CC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Oct 22, 2019, at 2:44 PM, Mark Salyzyn <salyzyn@android.com> wrote:
>=20
> Replace arguments for get and set xattr methods, and __vfs_getxattr
> and __vfs_setaxtr functions with a reference to the following now
> common argument structure:
>=20
> struct xattr_gs_args {
> 	struct dentry *dentry;
> 	struct inode *inode;
> 	const char *name;
> 	union {
> 		void *buffer;
> 		const void *value;
> 	};
> 	size_t size;
> 	int flags;
> };

As part of this change (which is touching all of the uses of these
fields anyway) it would be useful to give these structure fields a
prefix like "xga_" so that they can be easily found with tags.
Otherwise, there are so many different "dentry" and "inode" fields
in various structures that it is hard to find the right one.

> #define __USE_KERNEL_XATTR_DEFS
>=20
> -#define XATTR_CREATE	0x1	/* set value, fail if attr already =
exists */
> -#define XATTR_REPLACE	0x2	/* set value, fail if attr does =
not exist */
> +#define XATTR_CREATE	 0x1	/* set value, fail if attr already =
exists */
> +#define XATTR_REPLACE	 0x2	/* set value, fail if attr does =
not exist */
> +#ifdef __KERNEL__ /* following is kernel internal, colocated for =
maintenance */
> +#define XATTR_NOSECURITY 0x4	/* get value, do not involve security =
check */
> +#endif

Now that these arguments are separated out into their own structure,
rather than using "int flags" (there are a million different flags in
the kernel and easily confused) it would be immediately clear *which*
flags are used here with a named enum, like:

enum xattr_flags {
	XATTR_CREATE	=3D 0x1,	/* set value, fail if attr =
already exists */
	XATTR_REPLACE	=3D 0x2,	/* set value, fail if attr does =
not exist */
#ifdef __KERNEL__ /* following is kernel internal, colocated for =
maintenance */
	XATTR_NOSECURITY=3D 0x4,  /* get value, do not involve security =
check */
#endif
};

and use this in the struct like:

struct xattr_gs_args {
	struct dentry	*xga_dentry;
	struct inode	*xga_inode;
	const char	*xga_name;
	union {
		void		*xga_buffer;
		const void	*xga_value;
	};
	size_t		 xga_size;
	enum xattr_flags xga_flags;
};

Beyond the benefit for the reader to understand the code better, this
can also allow the compiler to warn if incorrect values are being
assigned to this field.

Cheers, Andreas






--Apple-Mail=_37420EF0-273E-43F4-97D0-62F6238C01CC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIzBAEBCAAdFiEEDb73u6ZejP5ZMprvcqXauRfMH+AFAl2vfyEACgkQcqXauRfM
H+AxqxAAq6h17WEPF6r1UpAZIwUiPfdUH5qvEj5YwdktQwWuj4vM4AD1SnRYnDv2
erszJKsHxSS8RBP18hvIK3TC7Z1TwOPYxRcZb1KRnxX0TthhtHTNL103RmQvUvKm
8KjV2ZmRZAlgrvw09BGHJF4f4ina+Ua1AQsIg7l+6eGjBHJ3Nvjmv3M/Eca3Y9Gx
eWYOM5vlA7+eVqKpCEyQ+/EN5lhBOWA+qsQhfEyPjSns/VsVae7bWkUrZSIRHpk9
i7HCwOkDj9cmfU4iZ34JePW8dtqHfoq3ECMUvsO681CznbyWB7yDnmX+UL8OFw2s
Vj2n0fIHc/r3SJ87LF/k5JhjWaYM4rCM+1+uzXmukWQWXIU2U2vkLdAPkyibo6nq
5/Z98+GzWMwnP9esRhIM1lAf2Q0QQ/Bmmz5/2rwCEYpleEKInHDZyJ3ddSCC9mxQ
+bf/9EeqBVd7b2R8rQLNcrY9R5zewIE+NovyaCcz71H6lyQ/NwfAAlUrjXN6zjGo
aZYq3D2plzK5PnJwZrmarfiI2Qtge9h2sbFNX2dRT6oLeZNzv/rAx/8AueYIcGjb
bPlf+rGFqzCVPkUQFPYqlsa/oEqUTnmr+6p8FvKO8DJhdVZEuOn/vJZV4e903hHl
VURWEhW1Djzh/zWJVrNeOQRk+0KBXXfgvZ9nHpMRbX0xESTU+cY=
=8Giq
-----END PGP SIGNATURE-----

--Apple-Mail=_37420EF0-273E-43F4-97D0-62F6238C01CC--


--===============4378047869609478884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4378047869609478884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============4378047869609478884==--

