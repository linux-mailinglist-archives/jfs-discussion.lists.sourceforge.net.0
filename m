Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E147D07330
	for <lists+jfs-discussion@lfdr.de>; Fri, 09 Jan 2026 06:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fpOQ74ic/gRW4BMtWd+yJWIaw+MxeTUITlCmLTQ2JPo=; b=Xywc2wqaxOgf2PD6Wh9qsZaT9b
	CNGP5c3dlYmo6HkC6MDXHwITEh9PT0VwtrdJMMjdDI7Ejz2sejuVRRdJyxAEnqsO5KBp/CljLn4Vx
	/X3RLtfyi//rsi3UlMeRwcP4bU9mqHg3ZWt7wsxtf21jL6CHrywtW+7ZWmYWWjb8faHY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ve512-0002jO-9y;
	Fri, 09 Jan 2026 05:26:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1ve511-0002jG-4a
 for jfs-discussion@lists.sourceforge.net;
 Fri, 09 Jan 2026 05:26:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EEF8CAf2dAOD+neWtLdI+w7NxCIZ2WohswMXxqPrdck=; b=ew6ivzyIN77qdYKfQQGrcDVEgs
 07zTx3MAEHXM3ew+4hBbnjGFPn7mnKgJ1Qv2cSxO9h7VaxxX6aCaXHDo650QUwGWnnXYoshcNoNQ6
 baHQyjzXQT5Vy7V+95LBEiRglKed/ITMUWJK4lBVc7WNJkIbxsC04pOI6kt6Nb8wgImI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EEF8CAf2dAOD+neWtLdI+w7NxCIZ2WohswMXxqPrdck=; b=d+WcM0MKX26EiUm67vLXhJic6h
 q4Kd5pY+AfXFqnDpknOtvo3RfDSmSJEeyW3LXVQIPn/48jCdjF6xbfwSvo6mjCc2HGhL4pQ8UrCCR
 PlHq77vCRRh8B5NWY4p1UqvZYggR/x+4IoJThoThBBI2nofSY98xbqhAxeZREHBNk7rA=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ve510-0003tp-Om for jfs-discussion@lists.sourceforge.net;
 Fri, 09 Jan 2026 05:26:27 +0000
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-382f087e6c9so17920071fa.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 08 Jan 2026 21:26:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767936380; x=1768541180; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EEF8CAf2dAOD+neWtLdI+w7NxCIZ2WohswMXxqPrdck=;
 b=dXUZR193q+vqDLeHvI/Fw49jFXDuwCZvQdVJUxbuvpMOmHFTmZzNDQmo1nvWDZzz4u
 vpnmlYH9SAltDuxdF/L5/ZrtyofQ2JVFAbWFYA8+4QQPYwWdsVa49WjrANv8ggtP8C3k
 Tn/mGEy9wKD4wm1+SsBkb8ZH2wgi9S5zra7QG7h/M5edGeogXOTPmpkE+OSLtH2+FFak
 hL0XT5J1B8zyGao2UVRf7iGcJKwYax9SFoRqRqnJSsOGZUs56wvEa0wFrg2OmRGFcJMk
 FKcp8Jdorni3cvCv4Ui7Kc8nIufEpLIuZnSCMSAhA4vD1IGZzr7IWRprLbJcKorW/GDc
 p2ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767936380; x=1768541180;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=EEF8CAf2dAOD+neWtLdI+w7NxCIZ2WohswMXxqPrdck=;
 b=r88VoVhLVgqMnZe88633XKPGPl1KonHJ0LtV0IrT+Pppce2rkU93FbepoF2RK+zV0B
 tI5a9CoEVVx3m9rWV5KY+zuDoi3Otyl88IUG+kfs1jRAvjrpRhL5Xk95mEGlRkToMC4L
 LCHg8dTLFFRTqsGfdh/oRlm4COO5bP2NnhU0GHp03lmWq5idTjUVwy3KP3lGOLlz1YgP
 HenMVqNtY2z2wigkCmYyysnpPRAOHy7A/lnNn6zECnNXqlKUVEepFsJWYNqujB1BU0jz
 fYq+n0CnscTe4/QcwAYaN3b/gcysQsOx+8USjLBCVXcZQsP0BA8xa2Ge3dbAqmHQ9Bjt
 BK7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWHtpLDtLNwnhkCerr2kz1mGDGmiW9xuuejNYGHdnJrSQ1i0n9RwCkvtrsb55PTjMKM3ZshKwBzO/rXTVfevw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwR1dvTQrZfHEXjEeFvPnH4rkWJ7kadzSlyfaG7+60k3s0FYl93
 +oAnB/KizmA9jbsUtLtYiytp0fCdrpGNpLrEolMomzOVw1I0E1Fl2ZTrz72s/HePx+xqnZaoBgL
 NfgacsyOvBKe09rFgMhXrLAugglscJdA=
X-Gm-Gg: AY/fxX59OLxQkAb133X5R5hKSaVqODP6vv1QRFliCdPzUPh4MgGMLROg/Jg6HJcb6gr
 amr2IezFXGCvjC3cs8ijOrbAjK4GTos7Whsb6UgVRciSIZoh/zBNEhsv7/dRgnipjLpN22yKOq4
 jUfkE+EINGel8QN2agEMg1WxI691xj1n+aBK/74wHlzYfswG4doOZ9IFCQRvoYiQL97MoKEjGxt
 abA5IgcRznt3AJEXQuHIljRZLMbxQx+lP8nRwsAyJuHOWIwcS8taWsblYzDSo8fJcWb+1XL
X-Google-Smtp-Source: AGHT+IFacKbx/HloTRDyL3KNE+dISSFeSIeO5gnLVmi9ry+Gc3uB4ma+c7Q9oZoxnNZINjg1j054MzA1urN4ujLkRdE=
X-Received: by 2002:a05:651c:419b:b0:378:e3f9:2d26 with SMTP id
 38308e7fff4ca-382ff823bdamr21702801fa.39.1767936379607; Thu, 08 Jan 2026
 21:26:19 -0800 (PST)
MIME-Version: 1.0
References: <20260108-setlease-6-20-v1-0-ea4dec9b67fa@kernel.org>
 <20260108-setlease-6-20-v1-13-ea4dec9b67fa@kernel.org>
In-Reply-To: <20260108-setlease-6-20-v1-13-ea4dec9b67fa@kernel.org>
Date: Fri, 9 Jan 2026 14:26:03 +0900
X-Gm-Features: AQt7F2pmUKGJKWpVwxhIrI-U32G4ALuqYGKPCGsBpfUc51GGTfk1sxJMQ_5a6zs
Message-ID: <CAKFNMok9FG=hhzr8YrHYws5z3jTWOf2TXtFWvSfYbNy6+XLHxw@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 9, 2026 at 2:15 AM Jeff Layton wrote: > > Add
 the setlease file_operation to nilfs_file_operations and >
 nilfs_dir_operations, 
 pointing to generic_setlease. A future patch > will change th [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [konishi.ryusuke(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.172 listed in wl.mailspike.net]
X-Headers-End: 1ve510-0003tp-Om
Subject: Re: [Jfs-discussion] [PATCH 13/24] nilfs2: add setlease file
 operation
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
From: Ryusuke Konishi via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Dave Kleikamp <shaggy@kernel.org>,
 Alexander Aring <alex.aring@gmail.com>, Jan Kara <jack@suse.cz>,
 Paulo Alcantara <pc@manguebit.org>, Sandeep Dhavale <dhavale@google.com>,
 Martin Brandenburg <martin@omnibond.com>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Anders Larsen <al@alarsen.net>, Amir Goldstein <amir73il@gmail.com>,
 jfs-discussion@lists.sourceforge.net, linux-unionfs@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chunhai Guo <guochunhai@vivo.com>, linux-f2fs-devel@lists.sourceforge.net,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>, linux-mtd@lists.infradead.org,
 Mike Marshall <hubcap@omnibond.com>, linux-xfs@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>, Yue Hu <zbestahu@gmail.com>,
 Miklos Szeredi <miklos@szeredi.hu>, samba-technical@lists.samba.org,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 devel@lists.orangefs.org, Hugh Dickins <hughd@google.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 linux-mm@kvack.org, linux-btrfs@vger.kernel.org, Gao Xiang <xiang@kernel.org>,
 linux-ext4@vger.kernel.org, Salah Triki <salah.triki@gmail.com>,
 Carlos Maiolino <cem@kernel.org>, Dominique Martinet <asmadeus@codewreck.org>,
 Shyam Prasad N <sprasad@microsoft.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-cifs@vger.kernel.org,
 Chao Yu <chao@kernel.org>, linux-nfs@vger.kernel.org,
 Tom Talpey <tom@talpey.com>, ocfs2-devel@lists.linux.dev,
 Bharath SM <bharathsm@microsoft.com>, linux-nilfs@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 Ilya Dryomov <idryomov@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Gruenbacher <agruenba@redhat.com>, Hans de Goede <hansg@kernel.org>,
 gfs2@lists.linux.dev, Christian Brauner <brauner@kernel.org>,
 ntfs3@lists.linux.dev, Theodore Ts'o <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 linux-erofs@lists.ozlabs.org, v9fs@lists.linux.dev,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
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

T24gRnJpLCBKYW4gOSwgMjAyNiBhdCAyOjE14oCvQU0gSmVmZiBMYXl0b24gd3JvdGU6Cj4KPiBB
ZGQgdGhlIHNldGxlYXNlIGZpbGVfb3BlcmF0aW9uIHRvIG5pbGZzX2ZpbGVfb3BlcmF0aW9ucyBh
bmQKPiBuaWxmc19kaXJfb3BlcmF0aW9ucywgcG9pbnRpbmcgdG8gZ2VuZXJpY19zZXRsZWFzZS4g
IEEgZnV0dXJlIHBhdGNoCj4gd2lsbCBjaGFuZ2UgdGhlIGRlZmF1bHQgYmVoYXZpb3IgdG8gcmVq
ZWN0IGxlYXNlIGF0dGVtcHRzIHdpdGggLUVJTlZBTAo+IHdoZW4gdGhlcmUgaXMgbm8gc2V0bGVh
c2UgZmlsZSBvcGVyYXRpb24gZGVmaW5lZC4gQWRkIGdlbmVyaWNfc2V0bGVhc2UKPiB0byByZXRh
aW4gdGhlIGFiaWxpdHkgdG8gc2V0IGxlYXNlcyBvbiB0aGlzIGZpbGVzeXN0ZW0uCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBKZWZmIExheXRvbiA8amxheXRvbkBrZXJuZWwub3JnPgoKTG9va3MgZ29vZCwg
VGhhbmtzIQoKQWNrZWQtYnk6IFJ5dXN1a2UgS29uaXNoaSA8a29uaXNoaS5yeXVzdWtlQGdtYWls
LmNvbT4KClJ5dXN1a2UgS29uaXNoaQoKPiAtLS0KPiAgZnMvbmlsZnMyL2Rpci5jICB8IDMgKyst
Cj4gIGZzL25pbGZzMi9maWxlLmMgfCAyICsrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZnMvbmlsZnMyL2Rpci5jIGIv
ZnMvbmlsZnMyL2Rpci5jCj4gaW5kZXggNmNhM2Q3NGJlMWUxNmQ1YmM1NzdlMjUyMGYxZTg0MTI4
N2EyNTExZi4uYjI0MzE5OTAzNmRmYTFhYjIyOTllZmFhYTViZGY1ZGEyZDE1OWZmMiAxMDA2NDQK
PiAtLS0gYS9mcy9uaWxmczIvZGlyLmMKPiArKysgYi9mcy9uaWxmczIvZGlyLmMKPiBAQCAtMzAs
NiArMzAsNyBAQAo+ICAgKi8KPgo+ICAjaW5jbHVkZSA8bGludXgvcGFnZW1hcC5oPgo+ICsjaW5j
bHVkZSA8bGludXgvZmlsZWxvY2suaD4KPiAgI2luY2x1ZGUgIm5pbGZzLmgiCj4gICNpbmNsdWRl
ICJwYWdlLmgiCj4KPiBAQCAtNjYxLDUgKzY2Miw1IEBAIGNvbnN0IHN0cnVjdCBmaWxlX29wZXJh
dGlvbnMgbmlsZnNfZGlyX29wZXJhdGlvbnMgPSB7Cj4gICAgICAgICAuY29tcGF0X2lvY3RsICAg
PSBuaWxmc19jb21wYXRfaW9jdGwsCj4gICNlbmRpZiAvKiBDT05GSUdfQ09NUEFUICovCj4gICAg
ICAgICAuZnN5bmMgICAgICAgICAgPSBuaWxmc19zeW5jX2ZpbGUsCj4gLQo+ICsgICAgICAgLnNl
dGxlYXNlICAgICAgID0gZ2VuZXJpY19zZXRsZWFzZSwKPiAgfTsKPiBkaWZmIC0tZ2l0IGEvZnMv
bmlsZnMyL2ZpbGUuYyBiL2ZzL25pbGZzMi9maWxlLmMKPiBpbmRleCAxYjhkNzU0ZGI0NGQ0NGQy
NWRjZDEzZjAwOGQyNjZlYzgzYzc0ZDNmLi5mOTNiNjhjNDg3N2M1ZWQzNjllOTBiNzIzNTE3ZTEx
NzE0MjMzNWRlIDEwMDY0NAo+IC0tLSBhL2ZzL25pbGZzMi9maWxlLmMKPiArKysgYi9mcy9uaWxm
czIvZmlsZS5jCj4gQEAgLTgsNiArOCw3IEBACj4gICAqLwo+Cj4gICNpbmNsdWRlIDxsaW51eC9m
cy5oPgo+ICsjaW5jbHVkZSA8bGludXgvZmlsZWxvY2suaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21t
Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC93cml0ZWJhY2suaD4KPiAgI2luY2x1ZGUgIm5pbGZzLmgi
Cj4gQEAgLTE1MCw2ICsxNTEsNyBAQCBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIG5pbGZz
X2ZpbGVfb3BlcmF0aW9ucyA9IHsKPiAgICAgICAgIC5mc3luYyAgICAgICAgICA9IG5pbGZzX3N5
bmNfZmlsZSwKPiAgICAgICAgIC5zcGxpY2VfcmVhZCAgICA9IGZpbGVtYXBfc3BsaWNlX3JlYWQs
Cj4gICAgICAgICAuc3BsaWNlX3dyaXRlICAgPSBpdGVyX2ZpbGVfc3BsaWNlX3dyaXRlLAo+ICsg
ICAgICAgLnNldGxlYXNlICAgICAgID0gZ2VuZXJpY19zZXRsZWFzZSwKPiAgfTsKPgo+ICBjb25z
dCBzdHJ1Y3QgaW5vZGVfb3BlcmF0aW9ucyBuaWxmc19maWxlX2lub2RlX29wZXJhdGlvbnMgPSB7
Cj4KPiAtLQo+IDIuNTIuMAo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
