Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36589D1D91D
	for <lists+jfs-discussion@lfdr.de>; Wed, 14 Jan 2026 10:35:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VGxrDwiLGIynFX9f60paWhxi8LVrEum+vvArBHnwCKg=; b=Jeis2jKNGyVAh58AmcVcvkbTdI
	4UUo37BSvjK8avQCWXqoRD1WNwPXU4qN0NZJOWqeS3GShHlTHqtE6mWTHwyh0gjbfMHi4NQG+S8gY
	BFbHCm1ta9Fc97O/UUn0HH8eZENDL353uMvHbg0HMW8XgstXEKalpIrbNbU15GwyBt9k=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vfxGj-0002GD-Dq;
	Wed, 14 Jan 2026 09:34:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vfxGi-0002G7-5D
 for jfs-discussion@lists.sourceforge.net;
 Wed, 14 Jan 2026 09:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cV5qgJhr5qbvOPleJHxrmxwzjsLTEkwpqcVKyAw90ng=; b=T5JWGn86Xyer5J6faG3M1RTDFR
 AKb0ub7v74cnnpiTlDZoCETmjgfmJBFMcG5Yl9s7v8AFKjBIC5kiZ3weanqEj5Fc41FJYEp8qBPTB
 JRqMbNjZCGpH/ayC6L8IOtRJjqmhTz4o4bLvIPuPCHUYXBFWzot5p6ULI6RyWTT+hZsg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cV5qgJhr5qbvOPleJHxrmxwzjsLTEkwpqcVKyAw90ng=; b=fOKWazNgoeM7RZWVqdhu2I6CVj
 V6kHcvwyp69vomuQGrDDGUtn2U/tBJRk3Cb/tXQmu0na0aUyAqtIy7C3mMpSK3uLdZrKc0Y7uVxy/
 YhcWkzREqo3rdnwNJlKD/LDMzGyuUZ+HAep1MGf7mQRiVduT7e9ahEvkJNVj0Mszjv3o=;
Received: from mail-ej1-f49.google.com ([209.85.218.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vfxGh-0002Sm-Ny for jfs-discussion@lists.sourceforge.net;
 Wed, 14 Jan 2026 09:34:24 +0000
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-b87693c981fso55413266b.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 14 Jan 2026 01:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768383257; x=1768988057; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cV5qgJhr5qbvOPleJHxrmxwzjsLTEkwpqcVKyAw90ng=;
 b=bZgNleF9RgyTkHlZL2DzZz4c3kuATVCfVXm+2OaAdHuIXEXKmYmmVM6QYiotnohgWc
 MshDcrpDSQAVmXPZBfAIkI2oqdMtJIAT2ROXg4P0y+BWplVp49eNXBdRUkQfhvpEmnF4
 pZd9vcw90Z8FWWJUXCtPuPWoeKWtybjm0Msge2CcnznidJlFbtfhFVZ3Fy/SUQ+MvkBP
 O2H5gGp7WytZ1pNANtOqSa9bbAwyuRvp6Dz/HP5Kg5b6+OK/FZeA+0Qs8MEp5qo+LSMH
 Nwdl61PPuY1H5t6FNtJmXHxS9O7C/AhU3USkQ6HUbNkwZ7TNwicIQi4dE4iBEG5A2WmC
 MokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768383257; x=1768988057;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=cV5qgJhr5qbvOPleJHxrmxwzjsLTEkwpqcVKyAw90ng=;
 b=O/rYY1waqCePVkHTO6RKwiRnx+9SIDyB2UCXGbHFMJk15838dhGl33xlGZ0mRNSsl3
 TtRNJmRW+Sg0aNPX7Q9RHZiayyc8LIiq3HcxEC6F+xiXqJCHYUNIJDv0b8M8vp5lZl/T
 cPI/mARodkrBf9vYN+eanyVAZEDAI2FXsbaRL+Gl9pQRWYDRGVH8PjMBfkJtbvY+EB3Y
 C3J2artBRtLBaBiRu1pTBAMv31U0ZjyFTT96QEQhsWyUqEHW0L5kTd/Md7f4o3xhDutl
 AaG0Xil7bLOjaSplAEVW8B633/f2+Ru8AXRU4UCY1Xie+8vUo6yp5HGy3qJpPBDPuKdB
 Fr+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWuTiH7KHP85B3OBPw+UKVUfGedNdpmADyJGRpG4o1OWFFyEVohl7UPemq8P8w5DJxNqJjDSv3izm1nA1JNlQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzBC4iGzyl1BXJAH44q931u4rA4QkJ8IfN7zcGVX1/lgpl/AJjo
 3jy0zomYvWApnkhgnLQc370TDQBqpFR8d5ird7xK77DV84LlM04jdnWtBstDxvR58tF802S4MT1
 zPxr+SkazftOVca9J1m7PwfbDQqrvdgM=
X-Gm-Gg: AY/fxX61WLmE2xYicIbqE3HIsWmICpsEC1YhX99D2FG2QNmcX1rTvQInYclvZQhJhNm
 t4OKHDxhZDgP33GOBPnA4CBRHZ7CxpScjp3s0P/rseYtS7Lrgu3x3ZC17DPFac9DdEPvm66btYt
 mLlIdW3SrD8RzpxdtvTXka14+XJREz/GJZBkWNcK8z+6MzWLkVKaAnMS+Rud35pvvvRY4hEkRS1
 oN/I5cgpwPTzLAtG39DmI2OMDMFFzDgtTBGsPAo26ymZT4RyRBIRu6orGK9+dQ6NDkfGjQSqeJ5
 Xea69EVjb2wsf1WSqADm4AZkhjN1uXlg8unRzqHk
X-Received: by 2002:a17:906:6a02:b0:b87:25a6:a906 with SMTP id
 a640c23a62f3a-b87677e0680mr108491266b.46.1768383255915; Wed, 14 Jan 2026
 01:34:15 -0800 (PST)
MIME-Version: 1.0
References: <20260108-setlease-6-20-v1-0-ea4dec9b67fa@kernel.org>
 <m3mywef74xhcakianlrovrnaadnhzhfqjfusulkcnyioforfml@j2xnk7dzkmv4>
 <8af369636c32b868f83669c49aea708ca3b894ac.camel@kernel.org>
 <CAOQ4uxgD+Sgbbg9K2U0SF9TyUOBb==Z6auShUWc4FfPaDCQ=rg@mail.gmail.com>
 <ec78bf021fa1f6243798945943541ba171e337e7.camel@kernel.org>
 <cb5d2da6-2090-4639-ad96-138342bba56d@oracle.com>
 <ce700ee20834631eceededc8cd15fc5d00fee28e.camel@kernel.org>
 <20260113-mondlicht-raven-82fc4eb70e9d@brauner>
 <aWZcoyQLvbJKUxDU@infradead.org>
 <ce418800f06aa61a7f47f0d19394988f87a3da07.camel@kernel.org>
 <aWc3mwBNs8LNFN4W@infradead.org>
In-Reply-To: <aWc3mwBNs8LNFN4W@infradead.org>
Date: Wed, 14 Jan 2026 10:34:04 +0100
X-Gm-Features: AZwV_QjTKvsgUAM6BTw2rpBHAs0ymZXhE-dNbh6dt2ll27JlZs1InITXkkYC5Xs
Message-ID: <CAOQ4uxhMjitW_DC9WK9eku51gE1Ft+ENhD=qq3uehwrHO=RByA@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 14, 2026 at 7:28 AM Christoph Hellwig wrote: >
 > On Tue, Jan 13, 2026 at 12:06:42PM -0500, Jeff Layton wrote: > > Fair point, 
 but it's not that hard to conceive of a situation where > > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.49 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vfxGh-0002Sm-Ny
Subject: Re: [Jfs-discussion] [PATCH 00/24] vfs: require filesystems to
 explicitly opt-in to lease support
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Dave Kleikamp <shaggy@kernel.org>,
 Alexander Aring <alex.aring@gmail.com>, Jan Kara <jack@suse.cz>,
 Paulo Alcantara <pc@manguebit.org>, Sandeep Dhavale <dhavale@google.com>,
 Martin Brandenburg <martin@omnibond.com>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Anders Larsen <al@alarsen.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 jfs-discussion@lists.sourceforge.net, linux-unionfs@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chunhai Guo <guochunhai@vivo.com>, Ilya Dryomov <idryomov@gmail.com>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>, linux-mtd@lists.infradead.org,
 Mike Marshall <hubcap@omnibond.com>, linux-xfs@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>, Yue Hu <zbestahu@gmail.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, devel@lists.orangefs.org,
 Hugh Dickins <hughd@google.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, ntfs3@lists.linux.dev,
 Joseph Qi <joseph.qi@linux.alibaba.com>, linux-mm@kvack.org,
 linux-btrfs@vger.kernel.org, Gao Xiang <xiang@kernel.org>,
 linux-ext4@vger.kernel.org, Salah Triki <salah.triki@gmail.com>,
 Carlos Maiolino <cem@kernel.org>, Dominique Martinet <asmadeus@codewreck.org>,
 Shyam Prasad N <sprasad@microsoft.com>, samba-technical@lists.samba.org,
 linux-doc@vger.kernel.org, linux-cifs@vger.kernel.org,
 Chao Yu <chao@kernel.org>, linux-nfs@vger.kernel.org,
 Tom Talpey <tom@talpey.com>, ocfs2-devel@lists.linux.dev,
 Bharath SM <bharathsm@microsoft.com>, linux-nilfs@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Gruenbacher <agruenba@redhat.com>, Hans de Goede <hansg@kernel.org>,
 gfs2@lists.linux.dev, Christian Brauner <brauner@kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, Theodore Ts'o <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 linux-erofs@lists.ozlabs.org, v9fs@lists.linux.dev,
 Jonathan Corbet <corbet@lwn.net>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Namjae Jeon <linkinjeon@kernel.org>,
 Steve French <sfrench@samba.org>, Chuck Lever <chuck.lever@oracle.com>,
 Hongbo Li <lihongbo22@huawei.com>, Anna Schumaker <anna@kernel.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sungjong Seo <sj1557.seo@samsung.com>, David Woodhouse <dwmw2@infradead.org>,
 Trond Myklebust <trondmy@kernel.org>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgNzoyOOKAr0FNIENocmlzdG9waCBIZWxsd2lnIDxoY2hA
aW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIEphbiAxMywgMjAyNiBhdCAxMjowNjo0
MlBNIC0wNTAwLCBKZWZmIExheXRvbiB3cm90ZToKPiA+IEZhaXIgcG9pbnQsIGJ1dCBpdCdzIG5v
dCB0aGF0IGhhcmQgdG8gY29uY2VpdmUgb2YgYSBzaXR1YXRpb24gd2hlcmUKPiA+IHNvbWVvbmUg
aW5hZHZlcnRhbnRseSBleHBvcnRzIGNncm91cGZzIG9yIHNvbWUgc2ltaWxhciBmaWxlc3lzdGVt
Ogo+Cj4gU3VyZS4gIEJ1dCBob3cgaXMgdGhpcyB3b3JzZSB0aGFuIGFjY2lkZW50YWxseSBleHBv
cnRpbmcgcHJpdmF0ZSBkYXRhCj4gb3IgYW55IG90aGVyIG1pc2NvbmZpZ3VyYXRpb24/Cj4KCk15
IFBPViBpcyB0aGF0IGl0IGlzIGxlc3MgYWJvdXQgc2VjdXJpdHkgKGFzIHlvdXIgcXVlc3Rpb24g
aW1wbGllcyksIGFuZAptb3JlIGFib3V0IGNvcnJlY3RuZXNzLgoKVGhlIHNwZWNpYWwgdGhpbmcg
YWJvdXQgTkZTIGV4cG9ydCwgYXMgb3Bwb3NlZCB0bywgc2F5LCBrc21iZCwgaXMKb3BlbiBieSBm
aWxlIGhhbmRsZSwgSU9XLCB0aGUgZXhwb3J0X29wZXJhdGlvbnMuCgpJIHBlcmNlaXZlIHRoaXMg
YXMgYSB2ZXJ5IHN0cmFuZ2UgYW5kIHVuZGVzaXJlZCBzaXR1YXRpb24gd2hlbiBORlMKZmlsZSBo
YW5kbGVzIGRvIG5vdCBiZWhhdmUgYXMgcGVyc2lzdGVudCBmaWxlIGhhbmRsZXMuCgpGVVNFIHdp
bGwgZ2xhZGx5IG9wZW4gYSBjb21wbGV0ZWx5IGRpZmZlcmVudCBvYmplY3QsIHNvbWV0aW1lcwph
IGRpZmZlcmVudCBvYmplY3QgdHlwZSBmcm9tIGFuIE5GUyBjbGllbnQgcmVxdWVzdCBhZnRlciBz
ZXJ2ZXIgcmVzdGFydC4KCkkgc3VwcG9zZSB0aGF0IHRoZSBzYW1lIGNvdWxkIGhhcHBlbiB3aXRo
IHRtcGZzIGFuZCBwcm9iYWJseSBzb21lCm90aGVyIGZzLgoKVGhpcyBwcm9ibGVtIGlzIG9sZCBh
bmQgd2VsZGVkIGludG8gdGhlIHN5c3RlbSwgYnV0IElNTyBhZGRpbmcgbW9yZQprZXJuZWwgZmls
ZXN5c3RlbXMsIHdoaWNoIGNvbnNjaW91c2x5IGV4cG9ydCBmaWxlIGhhbmRsZXMgdGhhdCBkbyBu
b3QKc3Vydml2ZSBzZXJ2ZXIgcmVib290IGRvZXMgbm90IHNlcnZlIHVzZXJzIGludGVyZXN0cyB3
ZWxsLgoKT25lIGNvdWxkIGNsYWltIHRoYXQgdGhpcyBpcyBhIGJ1ZyB0aGF0IGNhbiBiZSBmaXhl
ZCBieSBhZGRpbmcgYm9vdF9pZAp0byBzYWlkIGZpbGUgaGFuZGxlcywgYnV0IHdoeSBmaXggc29t
ZXRoaW5nIHRoYXQgbm9ib2R5IGFza2VkIGZvcj8KCmNncm91cGZzLCBwaWRmcywgbnNmcywgYWxs
IGdhaW5lZCBvcGVuX2J5X2hhbmRsZV9hdCgpIGNhcGFiaWxpdHkgZm9yCmEga25vd24gcmVhc29u
LCB3aGljaCB3YXMgTk9UIE5GUyBleHBvcnQuCgpJZiB0aGUgYXV0aG9yIG9mIG9wZW5fYnlfaGFu
ZGxlX2F0KCkgc3VwcG9ydCAoaS5lLiBicmF1bmVyKSBkb2VzIG5vdAp3aXNoIHRvIGltcGx5IHRo
YXQgdGhvc2UgZnMgc2hvdWxkIGJlIGV4cG9ydGVkIHRvIE5GUywgd2h5IG9iamVjdD8KCldlIGNv
dWxkIGhhdmUgdGhlIG9wdC1pbi9vdXQgb2YgTkZTIGV4cG9ydCBmaXhlcyBwZXIgRVhQT1JUX09Q
XwpmbGFncyBhbmQgd2UgY291bGQgZXZlbiB0aGluayBvZiBhbGxvd2luZyBhZG1pbiB0byBtYWtl
IHRoaXMgZGVjaXNpb24KcGVyIHZmc21vdW50IChlLmcuIGZvciBjZ3JvdXBmcykuCgpJbiBhbnkg
Y2FzZSwgSSBmYWlsIHRvIHNlZSBob3cgb2JqZWN0aW5nIHRvIHRoZSBwb3NzaWJpbGl0eSBvZiBO
RlMgZXhwb3J0Cm9wdC1vdXQgc2VydmVzIGFueW9uZS4KClRoYW5rcywKQW1pci4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
