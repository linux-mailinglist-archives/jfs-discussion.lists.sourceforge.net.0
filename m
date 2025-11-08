Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A560C42FD5
	for <lists+jfs-discussion@lfdr.de>; Sat, 08 Nov 2025 17:23:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:Date:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e7ip7TEAvb8DBjp5Vrjg/0Ir6/wqSYKt5/Q0/9xF6DQ=; b=C9eaXorVJL9cNN0y2OBs1gzG2O
	LJAhTFU+R5LRtOSI8j4RWUBakuywg+mFVp5npHOg4rp4S/gDfw1u3awxqTcNsSJ0DCmEf2dtpqbny
	9Prw010PvTsAvznmVGSIM3Nc7ffm/AoAjEHnjS2DSYDHgLlDDrPiUOYX/A6EY6OZlMiI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vHli5-0007bj-3h;
	Sat, 08 Nov 2025 16:22:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bagasdotme@gmail.com>) id 1vHf6q-0007Ah-Gw
 for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 09:19:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xMJJSbsWQXZcDWYlPD+q/sMKmcoPg7XO2KNCJJBRcPk=; b=bcai/B1DQFPFMpj6avT2VkjkmH
 b9GAKBi0IRy9MV29kiilQ2R3cSUuBrFQI3PtlXXZrz6/2xlHf5S8lWOOkx5AiL5qGrMtJFTGA7Oa8
 PnudzuwyBZM6o/4n+zs7gQj0Ok79FgHSxH9oW7iLIEmNpMCNIEBWRCYDQD7pnr2tGSSU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xMJJSbsWQXZcDWYlPD+q/sMKmcoPg7XO2KNCJJBRcPk=; b=aab4IkKFu2OIVwHKm3BYn7RWdg
 Qnul/K2VB1B/vOi28HW0+EeQ78jXGqLq6K/7+oqiiAK0mM9MsAvsUUQeDJXGo5mQQUIKn94giMBck
 tWRNjDPAqEX18ySCYq2K4k4ONxegUmBLy5vunzGkCWzjy0c/VULEQuVHMprt5vhgkucs=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vHf6p-0002HT-S9 for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 09:19:48 +0000
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-27d3540a43fso14583665ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 08 Nov 2025 01:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762593577; x=1763198377; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=xMJJSbsWQXZcDWYlPD+q/sMKmcoPg7XO2KNCJJBRcPk=;
 b=iExWiLMvTiDWfIPuJ3VWJUNei75q0X8QDzq9nJq2wdS2kd9j9MHBaXqu56ZRtlZxeU
 rDWWJ8id50/y9tjZaEQdOaA1OfeizO+ceuie/2yjiUzacQL+bk9tEZkCk0f0cz26tumO
 +2HFEK3iXW+R6okSNs8gP1j9U0ZQ07FpxHPCuK/DRCJ6AMxc8mnNgFfyv+q/j9/swb1t
 if7Bc1PfHdN1hyZ/ceCeJRosraAejmbFYkvwZpaMsrosXlB4aYsYeP0if8fahUouJdhY
 2ec2SxjNFU+ySV2nlj+LjAJ9u4MwCqc6yPBY9UkI6ttpuAI737O22CZGss0K3apwzIyB
 FpCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762593577; x=1763198377;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xMJJSbsWQXZcDWYlPD+q/sMKmcoPg7XO2KNCJJBRcPk=;
 b=ioytgsd8ubsECSoggIIaXwXivxj+HS1z5/YTC90dnxvMJfvzYfUTLpVdGf1aUXo33z
 NEFk5XXyiMjW6FIkvoVitkQ3gPY35bPsaK/k44VIugI5fpN6+pEBpNK07FRMQs8/EkpE
 0T6XXmQdmeBY6F1r+eZ5IAcEqHcd45brvDIcvCV+0IT7nh/IGiXyQjiq01IC8t5vHS97
 ZK5F3pdWp4xI4EkBGcVAjcCZZAnfuhrPzkuGpfF63QPBecScS0+vTFXYPh/qyQrutSAE
 77Yz0XzE9Awufm3YqCEo43/FDAGqNX4lZ8xqTFE2nBJ8sZ0TMIYWoyuvewBhGv6YjznU
 XHjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW4veO5Ki21gox2NV4bZui4/wsgwxwf/c7Rf+khituuLMYYApAgIRkjR8dgNPdK8OeoYzpMcU4Qyl6qrmzzCA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxHYZ925Qugvm4eNuX3RWVxSB1k1JLw18B/RUmSolKNJPBnihfM
 5IfiRJFizyBsEgqrmM/SIueT8gqGEBTIgk3So/F7rPYWG0Mm3XdIzJ0o
X-Gm-Gg: ASbGncvhE+TBeiFY2cxGE7SkKiTtn7RF5SQE/IskpfPLT/RWNooNe0sbok1vonWQEqg
 YSZFyxYPGYYT3BXjN4Nq9qJCi79f83pjMcQ5dHVLq/oZQfUijJfWaIJmPGL7Alet7zHeA8u5wTH
 1OvY1jJZEL/jQDhuj6OEKP9HNc/uPA9rl1xXu2hGasU/Cxk5rgNGVOm3f7ZnDBR+z4b48k4aA0B
 NaK8h5UbjSLhKRwRAd5Cvj+VY6JVZtcIQgaSBHpuIDVDtAF3R0UJqwSwz9z0sTjrvvNGGRZkqYX
 qzJ36FGRztGr8oagrRM8/ueFKbjcXh03K5TSy+ZAMASu/T/WRsVYAv0Ga6WheweRDmyiHsiPGFJ
 rKbATVt8XKmUJOeNs7fkRKnI60gFrH586CvIeTfE1d0qOfA/7tO83LpxJI3DJhU2VA2kQp4bZRT
 fhZWcu97u+/bI=
X-Google-Smtp-Source: AGHT+IGxcceL/cUmEO7hnoApXfEFPAPpQerRMJTCvaDgcasBmFqwVjXcVlI2/yGLIfmLK+orIB3gUw==
X-Received: by 2002:a17:902:da84:b0:292:fc65:3584 with SMTP id
 d9443c01a7336-297e56f9b21mr24987685ad.50.1762593577039; 
 Sat, 08 Nov 2025 01:19:37 -0800 (PST)
Received: from archie.me ([210.87.74.117]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29650c5c6b3sm82791745ad.24.2025.11.08.01.19.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Nov 2025 01:19:35 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
 id 77412400200B; Sat, 08 Nov 2025 16:19:33 +0700 (WIB)
Date: Sat, 8 Nov 2025 16:19:33 +0700
To: Dominique Martinet <asmadeus@codewreck.org>,
 Jeff Layton <jlayton@kernel.org>
Message-ID: <aQ8LJfKC0R-4ehLU@archie.me>
References: <20251107-create-excl-v2-1-f678165d7f3f@kernel.org>
 <aQ7fOmknHIxcxuha@codewreck.org>
MIME-Version: 1.0
In-Reply-To: <aQ7fOmknHIxcxuha@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Nov 08, 2025 at 03:12:10PM +0900, Dominique Martinet
 wrote: > Jeff Layton wrote on Fri, Nov 07, 2025 at 10:05:03AM -0500: > >
 diff --git a/Documentation/filesystems/vfs.rst b/Documentation/fil [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [bagasdotme(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vHf6p-0002HT-S9
X-Mailman-Approved-At: Sat, 08 Nov 2025 16:22:38 +0000
Subject: Re: [Jfs-discussion] [PATCH v2] vfs: remove the excl argument from
 the ->create() inode_operation
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
From: Bagas Sanjaya via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Paulo Alcantara <pc@manguebit.org>,
 Mike Marshall <hubcap@omnibond.com>, linux-xfs@vger.kernel.org,
 Tyler Hicks <code@tyhicks.com>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Jan Harkes <jaharkes@cs.cmu.edu>,
 linux-um@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Zhihao Cheng <chengzhihao1@huawei.com>, Christian Brauner <brauner@kernel.org>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Trond Myklebust <trondmy@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 David Hildenbrand <david@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, Hugh Dickins <hughd@google.com>,
 codalist@coda.cs.cmu.edu, Namjae Jeon <linkinjeon@kernel.org>,
 Chao Yu <chao@kernel.org>, Yangtao Li <frank.li@vivo.com>,
 ocfs2-devel@lists.linux.dev, Jaegeuk Kim <jaegeuk@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, Theodore Ts'o <tytso@mit.edu>,
 Miklos Szeredi <miklos@szeredi.hu>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, gfs2@lists.linux.dev,
 Anna Schumaker <anna@kernel.org>, linux-efi@vger.kernel.org,
 Martin Brandenburg <martin@omnibond.com>, Kees Cook <kees@kernel.org>,
 Yuezhang Mo <yuezhang.mo@sony.com>, Carlos Maiolino <cem@kernel.org>,
 Chris Mason <clm@fb.com>, linux-mtd@lists.infradead.org,
 linux-hardening@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 NeilBrown <neilb@ownmail.net>, linux-doc@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, coda@cs.cmu.edu,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Oscar Salvador <osalvador@suse.de>, David Howells <dhowells@redhat.com>,
 linux-nfs@vger.kernel.org, Joseph Qi <joseph.qi@linux.alibaba.com>,
 samba-technical@lists.samba.org, Steve French <sfrench@samba.org>,
 Jeremy Kerr <jk@ozlabs.org>, ntfs3@lists.linux.dev,
 Hans de Goede <hansg@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Muchun Song <muchun.song@linux.dev>, Jan Kara <jack@suse.cz>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Bob Copeland <me@bobcopeland.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-mm@kvack.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Ard Biesheuvel <ardb@kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, ecryptfs@vger.kernel.org,
 Tom Talpey <tom@talpey.com>, Bharath SM <bharathsm@microsoft.com>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 David Sterba <dsterba@suse.com>, Xiubo Li <xiubli@redhat.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>, v9fs@lists.linux.dev,
 linux-unionfs@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>,
 Sungjong Seo <sj1557.seo@samsung.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-karma-devel@lists.sourceforge.net, linux-btrfs@vger.kernel.org,
 Joel Becker <jlbec@evilplan.org>
Content-Type: multipart/mixed; boundary="===============2452553626015049805=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--===============2452553626015049805==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hTQgJTXrd9+JcPiP"
Content-Disposition: inline


--hTQgJTXrd9+JcPiP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 08, 2025 at 03:12:10PM +0900, Dominique Martinet wrote:
> Jeff Layton wrote on Fri, Nov 07, 2025 at 10:05:03AM -0500:
> > diff --git a/Documentation/filesystems/vfs.rst b/Documentation/filesyst=
ems/vfs.rst
> > index 4f13b01e42eb5e2ad9d60cbbce7e47d09ad831e6..7a55e491e0c87a0d18909bd=
181754d6d68318059 100644
> > --- a/Documentation/filesystems/vfs.rst
> > +++ b/Documentation/filesystems/vfs.rst
> > @@ -505,7 +505,10 @@ otherwise noted.
> >  	if you want to support regular files.  The dentry you get should
> >  	not have an inode (i.e. it should be a negative dentry).  Here
> >  	you will probably call d_instantiate() with the dentry and the
> > -	newly created inode
> > +        newly created inode. This operation should always provide O_EX=
CL
>=20
> This and the block below change halfway from tab (old text) to spaces
> (your patch)
>=20
> Looks like the file has a few space-indented sections though so it won't
> be the first if that goes in as is, the html-rendering doesn't seem to
> care :)

FYI: I'm using Vim. My important settings (in ~/.vimrc) are:

```
set nojoinspaces
set textwidth=3D0
set backspace=3D2
```

However, ftplugin override these for each file type, so you have to essenti=
ally
"fork" the relevant ftplugin file for each type if you want for your settin=
gs
to take precedence. For example, in case of reST, copy
/usr/share/vim/vim91/ftplugin/rst.vim to ~/.vim/ftplugin/rst and override t=
he
already defined options there:

```
=2E..
" keep tabs as-is
setlocal comments=3Dfb:.. commentstring=3D..\ %s noexpandtab
=2E..
if exists("g:rst_style") && g:rst_style !=3D 0
    setlocal noexpandtab shiftwidth=3D8 softtabstop=3D0 tabstop=3D8
endif
=2E..
```

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--hTQgJTXrd9+JcPiP
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaQ8LHwAKCRD2uYlJVVFO
o2WVAPsFBRuUsYfWxAnWROgP/61sBqVYDc/UsPimcXm5dJJfgQD9ESTXpfxlpefS
VKeWBneX6svZYShHE5RzrbcYO+G5GA0=
=gW2v
-----END PGP SIGNATURE-----

--hTQgJTXrd9+JcPiP--


--===============2452553626015049805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2452553626015049805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============2452553626015049805==--

