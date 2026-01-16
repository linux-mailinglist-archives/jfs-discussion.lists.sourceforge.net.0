Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98066D32D7A
	for <lists+jfs-discussion@lfdr.de>; Fri, 16 Jan 2026 15:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iWLumFp9OHth/bQX+IXbYkLG+DUymSeBe+acbUduPXw=; b=SOa709OF8G/vvrtI6AUTEuP8dN
	1JOtyxQcq8ywa8jTQMCYCqNbbPdWox7TuzGbAxT82ucVVXDnwHTO2me2W3OsCeEpyIquy3JrlncEP
	s8P++K9CO36trAfIIZsDn8HaOkYqAu9mL+78HX+QCxa4Uk+yW3A9PZxNeC9iNnADRIpk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vgl6h-0001zm-5j;
	Fri, 16 Jan 2026 14:47:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vgl6Y-0001xu-Mu
 for jfs-discussion@lists.sourceforge.net;
 Fri, 16 Jan 2026 14:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rWCEzzwQTN3Jcqg8Pr6svjg3sqJRK7qADI0E/O11arI=; b=M4wmzmr9gg8Ar4vM6gTvjBPCzr
 WW3N9AaTdd/L4MpUrJkD7f1aFHyC5Jh32vQobwr57HNGTPFdZawcsYSL3SfyBzn3oh/OL+ZIrFmtc
 FH9IRP89EhNYN9btYV3bu1AMsNdp4+TI69oVfHSv3PIybz9lNcPes9Zs/E6ZgNiD+43E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rWCEzzwQTN3Jcqg8Pr6svjg3sqJRK7qADI0E/O11arI=; b=bVqdXhcpslMzL6BdrNkJWgxvVo
 ZRsSgqwY+jawldzxWXNQqlCey+Y0xYKZaqFP/VJlrvD3+6HHJrwjQq1yxY6u4fBgHlPxRbJAYa74P
 8K/um1KzqqC4E2ZTX2BPfWkdtyufPWYRWoWxq1jnMEht0MvPZZKoliCJF354/OQPXYro=;
Received: from mail-ej1-f53.google.com ([209.85.218.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vgl6Z-0002GT-2f for jfs-discussion@lists.sourceforge.net;
 Fri, 16 Jan 2026 14:47:15 +0000
Received: by mail-ej1-f53.google.com with SMTP id
 a640c23a62f3a-b79f8f7ea43so497674266b.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 16 Jan 2026 06:47:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768574823; cv=none;
 d=google.com; s=arc-20240605;
 b=CXO7s6VTHHskYT/gKET24PKNZm0Vy2ll3H4ZUUprjb4IaE1k8JpBu68vcGElw5MPvD
 UKkyaohGvKTWho/ChVIIt37S8itsGQLSfU4oE704qfDFiyltiHECkJQAh29QJJGePyx0
 gFktU5K8ldMyqGfbtKVONfIu5m0AtowK8KinstdPZzjHo95dgcyvbDw1utChT4k1qE73
 iSwpeppfUXlmhf33FYmGjr52rATQIok9LgWgsiy6j4nYIBySGAxfYn7QmnEF+qKeks7n
 G9S3xElceM/tMPjxp4tbrNWkBtJ6xvcwifBoISl2S4osAk2ecZSoPIIDNgYudZHiV85Z
 /fXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=rWCEzzwQTN3Jcqg8Pr6svjg3sqJRK7qADI0E/O11arI=;
 fh=eGOvnHVMvQkRozl6f0vH1YzUUlmmaU/o8g64s17HOYg=;
 b=WeOYEcwZEmZNCh2zqwwtZ6rWrOQd7aG/HmHXKgLt6lW+mRDm9kgQFYrHQpkZ8qAK/J
 HhVvpBmcYTRgG9ibZstU8xIavUQrQ9aQiseyRCJ3eV4jXp64pAgn2ffhJeYTtKbAFC4j
 lzIQD67HdxBZrkcPFuj1vo7HRFfn0B3jl5cWuf5ldoB5O3yH3if/Q3cH1G/pYNYvM/FJ
 ZOF4kiYniB1773QK45/CiMif5m9I0GPcWmP3gJ8QvtySszTVRkVeciIdkeSGuCG0gL9w
 dB5lz2y+xLGqoXoCi6CWRJMW19ts/uZgEMTv4nVkefBMLDy8ODJ8SPtHt50krzlTJffB
 Dk7Q==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768574823; x=1769179623; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rWCEzzwQTN3Jcqg8Pr6svjg3sqJRK7qADI0E/O11arI=;
 b=Y+KB7pB2X7ayz+nfEUCQkiX8CIIJfXhHaljoMKO9WOjvRvZn0bOjGd8slBuQK0snBE
 oGrZsjfWVl9i5EgOBRIwWnIszgeFScEtI7bLeP8shqCpHzPy2Hjz5yVmmEx6zXEVu/3a
 kftuF6maHxRCSGKNURk4BXUM6jlkDSTzApNzMnDv2+G6Jlhb5JKZ2x+gC50lMT1y4X+t
 ryPxAOmcVHO+0s1Ft6b2oT6g9f9SoXo4sCIyq8QHyyLtT/YVU+YBvfvoxu01pGcozZR2
 DW0ciI1vynurZJjp/VOANuezA2OmVqNSS/eZqkuRF7yKQPx2uEPcfqp4+Nl6YByHX4ZC
 weow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768574823; x=1769179623;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=rWCEzzwQTN3Jcqg8Pr6svjg3sqJRK7qADI0E/O11arI=;
 b=lL/9wA9QCCUthDU8ySennIthGu34IAfO6iSxmBlH6ifx4C+JV/NtnRA+v65x5mMH27
 PREklK1RxVCT+JLPuNLAr9TAL+Cb1LLKnYJvjXKxBw98+nWEMVumLaaV6R6mN9RKRk4l
 rgwrCdZJCImeOxIlAP5yon5TCdOvNR+boXDlzq7HuqiVpjgWONNlWSVhfuVk20I1sz9M
 pM6JhAOPfkaS0iBiNJH3qKlzhqqreacfxc2KmqWjRsfuZ2bPRnV6I78WfA2uTB4Ir1hM
 2js3GXn49982J/cqEnm/c9HSOFspiRkw2gWn2oFRvTNexYtKKOjSF1I6UlpNERb/hJ3D
 RjSQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8c3NKInLGE0+curVWSYq46ATAs/I4UdAuzZeT1MgjRDMYZp85lV9M2MlA1ZXJAxmGf9khUBuMuoRuyOT8Aw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyFu4lFf2DbRBBuu6/Z1QvfPDl0PsHenmErwVqvU4J2EdqCI25B
 3+/QGiDyaFVKaB662+NpPoIrZRDTm5JkU+PJ8YGu8TnpG+fsHogRKKVTjtMHOAaTMEnNy5Kri6l
 udX3H0baYPabQ7sxh6EJEF7oxOSzmGkg=
X-Gm-Gg: AY/fxX6NWcrNJvhEkXYSP/rGiylp/sgRkBMLg3OAjNu+88QHnT+FHAHw1KtJ0FGYfIl
 dlstgfL48HR9XkNlRRhsOrzZn6TUrM5tO2BiGbGc5gzRtneWtTnqKtl7guTKwXnhOmtGyM2rS9s
 qgjH5BX5B+aFRrcxTVpwuNqcXTfBzGNrOhbLiQwFdK4tHPFgU1HC3YswTMryPRoW3xoALXjyfNt
 KN92Ke3ZKw9gZLX++LwHqNaHjrKD4ze6eVQGdlL+RKp8IvTUqxkDv8ddVSi43hyRDSg/DsG7/jH
 4c2qtBXMfCAB90uFk732Ex1eNQCCIg==
X-Received: by 2002:a17:906:7305:b0:b72:a899:169f with SMTP id
 a640c23a62f3a-b8792d6cf8amr335795366b.4.1768574823087; Fri, 16 Jan 2026
 06:47:03 -0800 (PST)
MIME-Version: 1.0
References: <20260115-exportfs-nfsd-v1-0-8e80160e3c0c@kernel.org>
 <20260115-exportfs-nfsd-v1-29-8e80160e3c0c@kernel.org>
 <CAOQ4uxg304=s1Uoeayy3rm1e154Nf7ScOgseJHThw4uQjKwk0A@mail.gmail.com>
 <8e4c3df4828351c677186bf018061f2b1fd1b48e.camel@kernel.org>
In-Reply-To: <8e4c3df4828351c677186bf018061f2b1fd1b48e.camel@kernel.org>
Date: Fri, 16 Jan 2026 15:46:50 +0100
X-Gm-Features: AZwV_QiRcITYtWxbtRpeIxfeQr9ho0AGFQM_8wESdHA53c49E-5t7eaX1T9rC3o
Message-ID: <CAOQ4uxhkZNueydP0tTCAj6tuzKWPTYB7=JR_hb4gaavSKQ8C2w@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 16, 2026 at 1:36 PM Jeff Layton wrote: > > On
 Thu, 2026-01-15 at 20:23 +0100, Amir Goldstein wrote: > > On Thu, Jan 15,
 2026 at 6:51 PM Jeff Layton wrote: > > > > > > Some filesystems [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vgl6Z-0002GT-2f
Subject: Re: [Jfs-discussion] [PATCH 29/29] nfsd: only allow filesystems
 that set EXPORT_OP_STABLE_HANDLES
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
 Carlos Maiolino <cem@kernel.org>, linux-unionfs@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chunhai Guo <guochunhai@vivo.com>, Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 linux-mtd@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 Yue Hu <zbestahu@gmail.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 Hugh Dickins <hughd@google.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
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
 samba-technical@lists.samba.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, Steve French <sfrench@samba.org>,
 Chuck Lever <chuck.lever@oracle.com>, Hongbo Li <lihongbo22@huawei.com>,
 Anna Schumaker <anna@kernel.org>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev,
 David Woodhouse <dwmw2@infradead.org>, Trond Myklebust <trondmy@kernel.org>,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMTozNuKAr1BNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCAyMDI2LTAxLTE1IGF0IDIwOjIzICswMTAwLCBB
bWlyIEdvbGRzdGVpbiB3cm90ZToKPiA+IE9uIFRodSwgSmFuIDE1LCAyMDI2IGF0IDY6NTHigK9Q
TSBKZWZmIExheXRvbiA8amxheXRvbkBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gU29t
ZSBmaWxlc3lzdGVtcyBoYXZlIGdyb3duIGV4cG9ydCBvcGVyYXRpb25zIGluIG9yZGVyIHRvIHBy
b3ZpZGUKPiA+ID4gZmlsZWhhbmRsZXMgZm9yIGxvY2FsIHVzYWdlLiBTb21lIG9mIHRoZXNlIGZp
bGVzeXN0ZW1zIGFyZSB1bnN1aXRhYmxlCj4gPiA+IGZvciB1c2Ugd2l0aCBuZnNkLCBzaW5jZSB0
aGVpciBmaWxlaGFuZGxlcyBhcmUgbm90IHBlcnNpc3RlbnQgYWNyb3NzCj4gPiA+IHJlYm9vdHMu
Cj4gPiA+Cj4gPiA+IEluIF9fZmhfdmVyaWZ5LCBjaGVjayB3aGV0aGVyIEVYUE9SVF9PUF9TVEFC
TEVfSEFORExFUyBpcyBzZXQKPiA+ID4gYW5kIHJldHVybiBuZnNlcnJfc3RhbGUgaWYgaXQgaXNu
J3QuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEplZmYgTGF5dG9uIDxqbGF5dG9uQGtlcm5l
bC5vcmc+Cj4gPiA+IC0tLQo+ID4gPiAgZnMvbmZzZC9uZnNmaC5jIHwgNCArKysrCj4gPiA+ICAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9m
cy9uZnNkL25mc2ZoLmMgYi9mcy9uZnNkL25mc2ZoLmMKPiA+ID4gaW5kZXggZWQ4NWRkNDNkYTE4
ZTZkNGM0NjY3ZmYxNGRjMDM1ZjJlYWNmZjFkNi4uZGE5ZDVmYjJlNjYxM2MyNzA3MTk1ZGEyZTg2
NzhiM2ZjYjNkNDQ0ZCAxMDA2NDQKPiA+ID4gLS0tIGEvZnMvbmZzZC9uZnNmaC5jCj4gPiA+ICsr
KyBiL2ZzL25mc2QvbmZzZmguYwo+ID4gPiBAQCAtMzM0LDYgKzMzNCwxMCBAQCBfX2ZoX3Zlcmlm
eShzdHJ1Y3Qgc3ZjX3Jxc3QgKnJxc3RwLAo+ID4gPiAgICAgICAgIGRlbnRyeSA9IGZocC0+Zmhf
ZGVudHJ5Owo+ID4gPiAgICAgICAgIGV4cCA9IGZocC0+ZmhfZXhwb3J0Owo+ID4gPgo+ID4gPiAr
ICAgICAgIGVycm9yID0gbmZzZXJyX3N0YWxlOwo+ID4gPiArICAgICAgIGlmICghKGRlbnRyeS0+
ZF9zYi0+c19leHBvcnRfb3AtPmZsYWdzICYgRVhQT1JUX09QX1NUQUJMRV9IQU5ETEVTKSkKPiA+
ID4gKyAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+ID4gPiArCj4gPiA+ICAgICAgICAgdHJhY2Vf
bmZzZF9maF92ZXJpZnkocnFzdHAsIGZocCwgdHlwZSwgYWNjZXNzKTsKPiA+ID4KPiA+Cj4gPiBJ
REdJLiBEb24ndCB5b3Ugd2FudCAgdG8gZGVueSB0aGUgZXhwb3J0IG9mIHRob3NlIGZzIGluIGNo
ZWNrX2V4cG9ydCgpPwo+ID4gQnkgdGhlIHNhbWUgbG9naWMgdGhhdCBjaGVja19leHBvcnQoKSBj
aGVja3MgZm9yIGNhbl9kZWNvZGVfZmgoKQo+ID4gbm90IGZvciBjYW5fZW5jb2RlX2ZoKCkuCj4g
Pgo+Cj4gSXQgY2VydGFpbmx5IHdvbid0IGh1cnQgdG8gYWRkIGEgY2hlY2sgZm9yIHRoaXMgdG8g
Y2hlY2tfZXhwb3J0KCksIGFuZAo+IEkndmUgZ29uZSBhaGVhZCBhbmQgZG9uZSBzby4gVG8gYmUg
Y2xlYXIsIGRvaW5nIHRoYXQgd29uJ3QgcHJldmVudCB0aGUKPiBmaWxlc3lzdGVtIGZyb20gYmVp
bmcgZXhwb3J0ZWQsIGJ1dCB5b3Ugd2lsbCBnZXQgYSB3YXJuaW5nIGxpa2UgdGhpcwo+IHdoZW4g
eW91IHRyeToKPgo+ICAgICBleHBvcnRmczogL3N5cy9mcy9jZ3JvdXAgZG9lcyBub3Qgc3VwcG9y
dCBORlMgZXhwb3J0Cj4KPiBUaGF0IGV4cG9ydCB3aWxsIHN0aWxsIHNob3cgdXAgaW4gbW91bnRk
IHRob3VnaCwgc28gdGhpcyBpcyBqdXN0IGEKPiB3YXJuaW5nLiBUcnlpbmcgdG8gbW91bnQgaXQg
dGhvdWdoIHdpbGwgZmFpbC4KPgoKT2gsIEkgZGlkIG5vdCBrbm93LiBXaGF0IGFuIG9kZCB1c2Vy
IGV4cGVyaWVuY2UuCkFueXdheSwgYmV0dGVyIHRoYW4gbm8gd2FybmluZyBhdCBhbGwuCgpUaGFu
a3MsCkFtaXIuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9q
ZnMtZGlzY3Vzc2lvbgo=
