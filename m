Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DCAD27D47
	for <lists+jfs-discussion@lfdr.de>; Thu, 15 Jan 2026 19:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RBV8AaneeK6OoEZ7OmD7VyhtpfzQgzrDZPRpr0XjsMs=; b=AHSmzF/8+NsHl2qrxdwBNLII2X
	pw0KylZflJXz4K5sIz1WC5wByRkwiHSgzXq614i86Uw1FgZSUzhmaLSBdXrYbliELaA65ibLVI+so
	g38POhJaVLBQ/qXUuiCftqxvj/Kktk97Pkm7/hFUO9F8rfJ2bwmYoF4joOhTmepQBzZw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vgSUV-000314-CX;
	Thu, 15 Jan 2026 18:54:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vgSUS-00030y-IS
 for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jan 2026 18:54:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R/pIR9g5xBWqOZmQj/jDCO8xKQONNisoQQHHakrcMdk=; b=H2Kdp9x/sT5QZUH8COf84XytX7
 83isP/3tSknNrwza45Ce6sEVJXj+B1L0bkssHynLpHGaxhNIFpt2ulczBAm/Phfc/gFoak4t3h9qQ
 i7SOs49VF86mw8jOGQGZ61Kp5vwU/hSHIiJKYYOsTTyOlxcCCR/P8CbJN1av/i6LUBcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R/pIR9g5xBWqOZmQj/jDCO8xKQONNisoQQHHakrcMdk=; b=dJrCZB701Q9y8CLzYyZkL3edTH
 pAVoDm0lMc+cGRMYfrcwSXKLnO/yGUWfhsbsjx3f1XVTJErKgta/hTwSk+XBrBqO1ifDe6dr8kQfx
 xEP8v3gbV8FyuAmfg/6el/J8ZBVS42AtYbzI/fJVBljHjPdJmDPrWqGs3b/h0coxbTVQ=;
Received: from mail-wr1-f54.google.com ([209.85.221.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vgSUS-0002dk-8N for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jan 2026 18:54:40 +0000
Received: by mail-wr1-f54.google.com with SMTP id
 ffacd0b85a97d-4308d81fdf6so770023f8f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 15 Jan 2026 10:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768503269; x=1769108069; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R/pIR9g5xBWqOZmQj/jDCO8xKQONNisoQQHHakrcMdk=;
 b=nG8vxtHktlGGdXi1untFjAZZOZpVDgz3iD20SXuFvQ5Ap2Sng5szOW+VriMPtm/5tY
 dwNRKgDfpVntYtUskhyqi9lWgx+egvgRdHNOnzDLAKL38x3ANUnO9slDDvA936i0QIH5
 PEUPJeeCXPlWFewvMj1Yk40MWHlsW8+jX3J99gzelCXMoHla7QYRQjw8h3/0/gyN79dZ
 icdpVyLLpH5KlKfKzmWrxrDtfHXJGpWdpH1BWsTY//ET5g7/gYtxdJF1FcG+ELmUt86q
 bmMcCRPaE0W0yRXJibGA5L5Esy5UPBr2ICb/OaSp7osFcU3tdGae2dxtC3ziF4Id51as
 A6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768503269; x=1769108069;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=R/pIR9g5xBWqOZmQj/jDCO8xKQONNisoQQHHakrcMdk=;
 b=JCwh5HXTpHd054CkY6svkSikO+fgKTrAn1hc/gte6BtxnUAhjgbirkJwHzciOe/Yoe
 KES3bhsLB1xRql4vEp6Is0nyemRMmM9ZnXa6p0XVRXnjmQWm5VYtPfyDF/SH/Vo3z1c0
 +r+B7Y+NZRzQwNgcw4i5Pi8iL5Jev2pnE9t4Frz5GDmC/LwTp94wFw6AP4A/hhJPlp/3
 +wyHUAtdSZisx8AD03S8B/Aai/5g+vDSQsCCkPYzPq9M2Wlb+VTOWtgJnSqc/uiaCfXk
 fhGfYAD/TS3Z7+vlq7ZDLk+ltco189Gi+elULplrmlxHLvR8ZJ8D6vjz2lkQ9Kip/dEf
 CV4Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFtek2m4ecwMDN1+IMdZLBvTIHZ3+cIi7MIO36psnQdQhHeau7zDRP6fK89Wp+T5br9NEmQR29/jBw3730Bw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw4APoe3qx5bphOPYn9spm+tYy9vnxhlFxQzO3wLGhGtlie3ZQQ
 xUHcHsvHTvpfgg7jRpIteEz7V4MIetSRbSupkh+ja5GtnEf5gqRYNrhlHa2qyseRQvQqM+vSwmn
 5xd144SuW6pCsQjpcD7Ht0UMq7LOCeMg=
X-Gm-Gg: AY/fxX44FSnzdEio/1L3rDgDByXrxsEsGtb2Qz60CcsgUPOiMl1dG15TOAbg/S9HAnP
 aEMtL8EoNN9josFZHEr6yfueNgcpDXpfc8QrAgxwXY4Ud9EK6UgPqSM4NPMzStyzzSERe0A5rCr
 4OKA5eFSVrdQE+7XcWED5WSW4FO6ZMWSYI9f6JrxIaGjfSKVpBLUrAiaYLwqOfhaFgNtQF3G9yF
 DbJZMAif8qlL1aHtQcHBpo6R3lbbCJpG68VChxc5Ezh6F3E1abWgOYRhPteMMseRXM9K7ojMijE
 g9kahpo5CHrkc33AJ6gFAe5Hcz5u4g==
X-Received: by 2002:a05:6000:2313:b0:432:5c43:76 with SMTP id
 ffacd0b85a97d-43569bc17ebmr434376f8f.39.1768503268480; Thu, 15 Jan 2026
 10:54:28 -0800 (PST)
MIME-Version: 1.0
References: <20260115-exportfs-nfsd-v1-0-8e80160e3c0c@kernel.org>
 <20260115-exportfs-nfsd-v1-26-8e80160e3c0c@kernel.org>
In-Reply-To: <20260115-exportfs-nfsd-v1-26-8e80160e3c0c@kernel.org>
Date: Thu, 15 Jan 2026 19:54:17 +0100
X-Gm-Features: AZwV_QgNgqINU2MW0ct-_EKOImgQ1uAwJfq7nKBHPoIgHpyzlMCSNbXGV-6zTEg
Message-ID: <CAOQ4uxh4VaVL9PD7-_Op9Xs-z5Qrx8g6x2x5FccujQX-Cw9RqQ@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 15, 2026 at 6:50 PM Jeff Layton wrote: > > Add
 the EXPORT_OP_STABLE_HANDLES flag to fuse export operations to indicate >
 that this filesystem can be exported via NFS. > > Signed-off-by: [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
X-Headers-End: 1vgSUS-0002dk-8N
Subject: Re: [Jfs-discussion] [PATCH 26/29] fuse: add
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

T24gVGh1LCBKYW4gMTUsIDIwMjYgYXQgNjo1MOKAr1BNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gQWRkIHRoZSBFWFBPUlRfT1BfU1RBQkxFX0hBTkRMRVMgZmxh
ZyB0byBmdXNlIGV4cG9ydCBvcGVyYXRpb25zIHRvIGluZGljYXRlCj4gdGhhdCB0aGlzIGZpbGVz
eXN0ZW0gY2FuIGJlIGV4cG9ydGVkIHZpYSBORlMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmIExh
eXRvbiA8amxheXRvbkBrZXJuZWwub3JnPgo+IC0tLQo+ICBmcy9mdXNlL2lub2RlLmMgfCAyICsr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9mcy9m
dXNlL2lub2RlLmMgYi9mcy9mdXNlL2lub2RlLmMKPiBpbmRleCA4MTllNTBkNjY2MjI0YTYyMDFj
ZmM3ZjQ1MGUwYmQzN2JmZTMyODEwLi4xNjUyYTk4ZGI2MzlmZDc1ZTgyMDFiNjgxYTI5YzY4YjRl
YWIwOTNjIDEwMDY0NAo+IC0tLSBhL2ZzL2Z1c2UvaW5vZGUuYwo+ICsrKyBiL2ZzL2Z1c2UvaW5v
ZGUuYwo+IEBAIC0xMjA4LDYgKzEyMDgsNyBAQCBzdGF0aWMgc3RydWN0IGRlbnRyeSAqZnVzZV9n
ZXRfcGFyZW50KHN0cnVjdCBkZW50cnkgKmNoaWxkKQo+ICAvKiBvbmx5IGZvciBmaWQgZW5jb2Rp
bmc7IG5vIHN1cHBvcnQgZm9yIGZpbGUgaGFuZGxlICovCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZXhwb3J0X29wZXJhdGlvbnMgZnVzZV9leHBvcnRfZmlkX29wZXJhdGlvbnMgPSB7Cj4gICAgICAg
ICAuZW5jb2RlX2ZoICAgICAgPSBmdXNlX2VuY29kZV9maCwKPiArICAgICAgIC5mbGFncyAgICAg
ICAgICA9IEVYUE9SVF9PUF9TVEFCTEVfSEFORExFUywKPiAgfTsKClRoZXNlIGFyZSB1c2VkIHdo
ZW4gdGhlIHNlcnZlciBkZWNsYXJlcyBGVVNFX05PX0VYUE9SVF9TVVBQT1JUCnNvIGRvIG5vdCBv
cHQgaW4gZm9yIE5GUyBleHBvcnQuCgpUaGUgc2FkIHRoaW5nIHcuci50IEZVU0UgaXMgdGhhdCBp
biBtb3N0IGxpa2VsaWhvb2Qgc2VydmVyIGRvZXMgbm90IHByb3ZpZGUKcGVyc2lzdGVudCBoYW5k
bGVzIGFsc28gd2hlbiBpdCBkb2VzIG5vdCBkZWNsYXJlIEZVU0VfTk9fRVhQT1JUX1NVUFBPUlQK
YnV0IHdlIGFyZSBzdHVjayB3aXRoIHRoYXQuCgpUaGFua3MsCkFtaXIuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
