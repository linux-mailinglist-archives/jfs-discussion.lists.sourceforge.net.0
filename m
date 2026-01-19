Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBC4D3B1C5
	for <lists+jfs-discussion@lfdr.de>; Mon, 19 Jan 2026 17:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E8rDczVdBp+k2x0+6VNAeT7C+edEyjeQiZAz2xaMhzQ=; b=VU3mV3bNnI/HARV0jGnGgc2aVr
	ZDA/e4hwQtxws1pH+gsVbhJ9g8wtIIH4vKybcSlKdgCsit2TYhv3wl2qklbluP/99T/aWV7/nz/Ti
	FJWaaQVEdz7bNqLU4pPkmc8FBQbXfhdbCJKwTmBTAO97MoVa20gpiSL/AzlsHvJmVQEk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vhsLU-00063L-8w;
	Mon, 19 Jan 2026 16:43:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vhsLS-00063E-OF
 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jan 2026 16:43:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OP488vxzDs37SDvqB3SvtrET0fHZKVUQCP8+UqFkiUw=; b=h3gpCPTu3V6XphszlZXqndMdGy
 8W/UUtHxEMGzHmUc0d0nOZn9f/DiXfesjZ+pcSPM23WLBdkN81BSD6DUQYuNPW8heW+LSw/FBwdNw
 p5URLSMOz0r+1K3b1HGytnJaRHjIl4biMB3W5Ju0s6caOkaPqEgqPKtXfKsxC6OOGzD4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OP488vxzDs37SDvqB3SvtrET0fHZKVUQCP8+UqFkiUw=; b=UeBuySLJ5L/GG4lWTMKP7oB3DS
 aGWCL51D5//CxR/JljgSMvPZ8mmmBg8Cg37Am81SnkDUm2fR6Bsd58dN6eiuLfWMSNPM6Idont0Z1
 7gfmIbLBwIzP5/le5c0vgFKjue8dLkbUKElL+Df6D2GWyM2ADqw5l9mJ26PwaiD/ZCuY=;
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vhsLS-0000at-5P for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jan 2026 16:43:14 +0000
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-653781de668so6489509a12.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 19 Jan 2026 08:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768840987; x=1769445787; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OP488vxzDs37SDvqB3SvtrET0fHZKVUQCP8+UqFkiUw=;
 b=O0HsjN+mfvqVwW2nVA4StFMt1EYVAxpYsvMDn2hkkc088JtDj4Gcyqm249L8/7ydM7
 UTElnBJ/3XQPiC3QvzgxLqqyn1JCvHaIQtnArXubt5xxSsJ2gGSU5I71FXyarDwjhV4a
 ZjDvZfElTQCjxCinEXypwpqDdxJblex3dsc8G/zjNiVoQmz2bowC/Mr/jLDYKrwenggI
 v41StodO4SwLsDTGvU9jcVTg/q/BOpURtfJWXOzR/fMmTKjpd+JLizwarGH0KQf245Tj
 xLv+wZGBJ/+mrWO2M4jy0/fUueHqQdK2MsmPsot+onUb9WGC93CFtKAm7TIseZurteIC
 S5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768840987; x=1769445787;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=OP488vxzDs37SDvqB3SvtrET0fHZKVUQCP8+UqFkiUw=;
 b=HKNdqLujGYB5YP0bOo8Gb7ULqpjeOzm1TjYK2LCHUI+KeKypXUjJrT5R8vJz1VHFOc
 gfzup5No+z9GpLo/v982R6+1rNXElU5sa3UqRjI/OGrM393ZRxFaQKBqebwaDgkIdmZK
 uH1tgsaeV775dmXSbj/54m++LaVoURnbRwuEE0XzPkOG+bAeNNcuYU49Gb8mVhrxPA6p
 zm5QJ5FxhBot3yydBfkk22vNqKwN++jjfNoVObJ4gYTeUQqxdBvsb5b2kIrczq+dsYGi
 nSC7Aaj7XXCBgXr4cFt8o5FgNQK+CtdBT9piNxWFFB2DSB4UrwxRiohmwnUMh+Fopr4P
 NrWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTtFvBVHuCYBTWtSThexQtc3OFnR0Iany1r3ilDVrF397arswJb4XACV7f0LOOyTXS2Y2BaST5JWJy56axoA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyXLnsXkRRLk3tG9shAd6tg2xugh+vLPS27sRFOQRCkDU9AS1sx
 c5Sr/W/zJvT6wCQGeYWMkfoLmXZinkAlo2nJUvMyiJ9VLczcMyy7PHpWeJp83qpW/mFHRRZ8xt0
 bSsD5RtSQCZ66pE3sjiqTerf8sFkCBFQ=
X-Gm-Gg: AZuq6aJYMK+ISI9VNs3VuD1aXATWH8yACccujkyp8XSCB/mvcQ688HSosk261TN2+ce
 FBkvU1SAqIP8vouGHmIJ150RGQxI3CkbCxjk5GeNYpF4PrZkkGX0OIJCzcss7pcIviu1/TvcPMX
 DFiEHZp9qrOYoZDSO3ObTZxbtiMMVSOO3WHB8ylfNS7qAKzdHxfgBa/xI+aIAEIz3c26YaVxeTe
 tlwVGtqy2ZXcbGisVmGiDcA5m/Gog2tFeED2i2iSitvhA/N8YjXXPCkzwf+zhKb6UtO4eijNQgy
 nStAE9LfM230S4pwuj6wR+3ngE7pMA==
X-Received: by 2002:a05:6402:4304:b0:649:b200:afe9 with SMTP id
 4fb4d7f45d1cf-65452cca909mr8384256a12.27.1768840987066; Mon, 19 Jan 2026
 08:43:07 -0800 (PST)
MIME-Version: 1.0
References: <20260119-exportfs-nfsd-v2-0-d93368f903bd@kernel.org>
 <20260119-exportfs-nfsd-v2-17-d93368f903bd@kernel.org>
In-Reply-To: <20260119-exportfs-nfsd-v2-17-d93368f903bd@kernel.org>
Date: Mon, 19 Jan 2026 17:42:54 +0100
X-Gm-Features: AZwV_QiQ9eetgKyRnXUMiKJDXK2vIOYhTLzpDlKP7IN3cG_hSRVA59Z6sNZRsnw
Message-ID: <CAOQ4uxgXovX-rPuAE55D8x4jbNOQdAKJH3O5gpHJDMsT7kNGgw@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 19, 2026 at 5:29 PM Jeff Layton wrote: > > Add
 the EXPORT_OP_STABLE_HANDLES flag to overlayfs export operations to > indicate
 that this filesystem can be exported via NFS. > > Signed-off [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.46 listed in wl.mailspike.net]
X-Headers-End: 1vhsLS-0000at-5P
Subject: Re: [Jfs-discussion] [PATCH v2 17/31] ovl: add
 EXPORT_OP_STABLE_HANDLES flag to export operations
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
From: Amir Goldstein via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Amir Goldstein <amir73il@gmail.com>
Cc: Martin Brandenburg <martin@omnibond.com>,
 jfs-discussion@lists.sourceforge.net, Jan Kara <jack@suse.cz>,
 Paulo Alcantara <pc@manguebit.org>, Alex Markuze <amarkuze@redhat.com>,
 Sandeep Dhavale <dhavale@google.com>, linux-btrfs@vger.kernel.org,
 Carlos Maiolino <cem@kernel.org>, Dave Chinner <david@fromorbit.com>,
 linux-unionfs@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chunhai Guo <guochunhai@vivo.com>, Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 linux-mtd@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 Yue Hu <zbestahu@gmail.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 linux-doc@vger.kernel.org, Hugh Dickins <hughd@google.com>,
 Dai Ngo <Dai.Ngo@oracle.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Christoph Hellwig <hch@infradead.org>, NeilBrown <neil@brown.name>,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Salah Triki <salah.triki@gmail.com>, linux-mm@kvack.org,
 devel@lists.orangefs.org, Shyam Prasad N <sprasad@microsoft.com>,
 Olga Kornievskaia <okorniev@redhat.com>, linux-cifs@vger.kernel.org,
 Dave Kleikamp <shaggy@kernel.org>, Chao Yu <chao@kernel.org>,
 linux-nfs@vger.kernel.org, Tom Talpey <tom@talpey.com>,
 ocfs2-devel@lists.linux.dev, Bharath SM <bharathsm@microsoft.com>,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Gao Xiang <xiang@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Gruenbacher <agruenba@redhat.com>, gfs2@lists.linux.dev,
 Christian Brauner <brauner@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, linux-erofs@lists.ozlabs.org,
 Jonathan Corbet <corbet@lwn.net>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 Steve French <sfrench@samba.org>, Chuck Lever <chuck.lever@oracle.com>,
 Hongbo Li <lihongbo22@huawei.com>, Anna Schumaker <anna@kernel.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev,
 David Woodhouse <dwmw2@infradead.org>,
 David Laight <david.laight.linux@gmail.com>,
 Trond Myklebust <trondmy@kernel.org>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgNToyOeKAr1BNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gQWRkIHRoZSBFWFBPUlRfT1BfU1RBQkxFX0hBTkRMRVMgZmxh
ZyB0byBvdmVybGF5ZnMgZXhwb3J0IG9wZXJhdGlvbnMgdG8KPiBpbmRpY2F0ZSB0aGF0IHRoaXMg
ZmlsZXN5c3RlbSBjYW4gYmUgZXhwb3J0ZWQgdmlhIE5GUy4KPgo+IFNpZ25lZC1vZmYtYnk6IEpl
ZmYgTGF5dG9uIDxqbGF5dG9uQGtlcm5lbC5vcmc+ClJldmlld2VkLWJ5OiBBbWlyIEdvbGRzdGVp
biA8YW1pcjczaWxAZ21haWwuY29tPgoKPiAtLS0KPiAgZnMvb3ZlcmxheWZzL2V4cG9ydC5jIHwg
MSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2Zz
L292ZXJsYXlmcy9leHBvcnQuYyBiL2ZzL292ZXJsYXlmcy9leHBvcnQuYwo+IGluZGV4IDgzZjgw
ZmRiMTU2NzQ5ZTY1YTRlYTBhYjcwOGNiZmYzMzhkYWNkYWQuLjE4YzZhZWU5ZGQyM2JiNDUwZGFk
YmU4ZWVmOTM2MGVhMjY4MjQxZmYgMTAwNjQ0Cj4gLS0tIGEvZnMvb3ZlcmxheWZzL2V4cG9ydC5j
Cj4gKysrIGIvZnMvb3ZlcmxheWZzL2V4cG9ydC5jCj4gQEAgLTg2NSw2ICs4NjUsNyBAQCBjb25z
dCBzdHJ1Y3QgZXhwb3J0X29wZXJhdGlvbnMgb3ZsX2V4cG9ydF9vcGVyYXRpb25zID0gewo+ICAg
ICAgICAgLmZoX3RvX3BhcmVudCAgID0gb3ZsX2ZoX3RvX3BhcmVudCwKPiAgICAgICAgIC5nZXRf
bmFtZSAgICAgICA9IG92bF9nZXRfbmFtZSwKPiAgICAgICAgIC5nZXRfcGFyZW50ICAgICA9IG92
bF9nZXRfcGFyZW50LAo+ICsgICAgICAgLmZsYWdzICAgICAgICAgID0gRVhQT1JUX09QX1NUQUJM
RV9IQU5ETEVTLAo+ICB9Owo+Cj4gIC8qIGVuY29kZV9maCgpIGVuY29kZXMgbm9uLWRlY29kYWJs
ZSBmaWxlIGhhbmRsZXMgd2l0aCBuZnNfZXhwb3J0PW9mZiAqLwo+Cj4gLS0KPiAyLjUyLjAKPgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Np
b24K
