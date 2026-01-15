Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CF6D2838F
	for <lists+jfs-discussion@lfdr.de>; Thu, 15 Jan 2026 20:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DRGeNFlFB4fZKFrc8kGINmqMVldGvYTxnZp6PtndgFU=; b=NKtJqF+5nmimgiW7G1cKfe1a2l
	m/NEGQcrWdNo1ZZ6+jdjx9vV9x+i3/D3gell6GnvhDhyordhOD5+dw5RA/98ySWz7LzpfnlTCaStG
	1acwIvlPPnSL4GrID1TyonFy6aQGCo6FH/xeMeKxQZL2yTdBS4XggyxT+jKyJIXMswcY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vgTJr-0004Z6-MO;
	Thu, 15 Jan 2026 19:47:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vgTJq-0004Z0-G9
 for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jan 2026 19:47:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3/OO8RKyY0YoEvp6ZTLVXNCVFpOv1g0hFAjXGWT4AHc=; b=mOLgS2lzVuXyAB1WEmHycoC1dv
 7xsbPd9dSo8KayiCUEJWEMae0USoQLGXdo7aTmZp9TAyUcxSV6+hmCCiwpvAFz5d3MKXxxAqYy1Ho
 Mkn2u1p8WtUaTZfgTMtol+t9eyl7yp6SnCtkW6SW7fYORUPgZfIFx0SiTGNKzJO0Jj/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3/OO8RKyY0YoEvp6ZTLVXNCVFpOv1g0hFAjXGWT4AHc=; b=chp612vAx8DsETFrwl2eCykIHK
 HGsPz3A/zwtB4s4d2g+gGcKFw4XOZtF1TLgdkYbsoebt0SgngK3FVr30ZMKNU9Hs+Grzm7+4gKz9b
 KFYVeH9qdTbKYC4EkRf6eoNPIOG5G8Z18qJkL6Uo0B88Jhh8ZHUOAlZ1Mp/Rd8IIkxz4=;
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vgTJp-00059U-W2 for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jan 2026 19:47:46 +0000
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-64b9b0b4d5dso2825321a12.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 15 Jan 2026 11:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768506459; x=1769111259; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3/OO8RKyY0YoEvp6ZTLVXNCVFpOv1g0hFAjXGWT4AHc=;
 b=YKJFTbSCbRTvF44TsnOKdAXsAm9642vjwNMqCR3+IYHs/Y6nPmMGe2wn9lakOqAXQp
 ct+MMyYas9s6ctssRgSW+xB00X9kVl75llnfLzVONqYVq+R4I2vXLfhVhEiQJi8KBly0
 oZuX1NHjigBGNJe5y+Cp48u2VgcJ6NF3NAFy2W/QPqXRpOwQqh0sWoSpOsL0p7OJjjUX
 hhFmItB4JaI2wIiFN4QIsg3o9gmmVXV/35ZhTxR12zWLCazvGXNJ5Wd/rmCwEKNNRZRs
 6lrUhYuLe5ZNO1smvDvqrYDy1zCwhFAlyiq+VellHSVueuFsDDgszcc4A050TpUoG1qY
 PkgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768506459; x=1769111259;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=3/OO8RKyY0YoEvp6ZTLVXNCVFpOv1g0hFAjXGWT4AHc=;
 b=LR7BgTQfr3JJw1NT3N3BFvGXkx1tNfN9n4Fli9pqjpl/udrR9iWlC9+AGRPQ+idP5j
 AZ8CV+Ko4MmuVyU5RkhxhwTIOF7Ddd2WhKz/Lzd1qFspUrnm9GhzykMcApRslbugJAtn
 j7bA7BXZ7CzARXgWuicovq5jX75lzpui6e75UFki8X4c/vioRlH31wj/zHBlatUBHCz4
 3+D9f/SQ8D7mzGmbf8V3PrBlHHTGBN64bEbZ3vcZbY7mAdBuSKCT6NV6YVh2Q4VPwFAj
 Wko3yuLL9SylyFR6UyKrE86L94WJkOzbAE7dHCawBX3CulzAHY7WaZwJOLtVc6lftbz+
 CaQg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUqIv9v6f7WKW3ibnzgveWne26BvFTY7CwtOh2zBykLFKhYNAPQve+i0Md2gTSuiPUD0sgdUZLwDLQgNLolsQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyJ8G+eTTOwLHIP2a9aAnhERH2K6yZbqgB6sTtZjeW/HVwHjOCk
 nQAnUb/UJ3HKtqtsKYVYGMo51u3r6dSj5tzxzm37sKWJuRQoQSWhipcQwDAKeYXxxG9SrrABe5j
 td4dlKwrIfuHye2trNUuchT05l8XzqGg=
X-Gm-Gg: AY/fxX70N7ayJuEXZUbn7irLNU1cNe0wmz65vAhO3x6uv4hqcYSLEKd14iikv/bBIjq
 qEv1tA4MPR1PbiPrnjYw8YFc3z2H9f45wHfTZkqcGaKxijoFFxdXZF051jt4TaNnjqHplSPpm0w
 Coib6mFrUtj+BI/8PlZ0rp4cShPUyIsxMUO9/ICdhoEOK8BMf5YVDHkmP8CdW8fh2Btd6LwnNKt
 JTT6D7P/C+1GBNt+o6faUzSXtAeuQKzFxtaHvTgavuFORlLUQDdIezU+9Hr+sEEI1VZNKx9+TlL
 mMrbdwn1yTO4xhMkIb1gz3WJ4c2y6Q==
X-Received: by 2002:a05:6402:268e:b0:64b:7231:da3d with SMTP id
 4fb4d7f45d1cf-654b955cf01mr167575a12.9.1768506459177; Thu, 15 Jan 2026
 11:47:39 -0800 (PST)
MIME-Version: 1.0
References: <20260115-exportfs-nfsd-v1-0-8e80160e3c0c@kernel.org>
 <CAOQ4uxjOJMwv_hRVTn3tJHDLMQHbeaCGsdLupiZYcwm7M2rm3g@mail.gmail.com>
 <d486fdb8-686c-4426-9fac-49b7dbc28765@app.fastmail.com>
 <CAOQ4uxhnoTC6KBmRVx2xhvTXYg1hRkCJWrq2eoBQGHKC3sv3Hw@mail.gmail.com>
 <4d9967cc-a454-46cf-909b-b8ab2d18358d@kernel.org>
In-Reply-To: <4d9967cc-a454-46cf-909b-b8ab2d18358d@kernel.org>
Date: Thu, 15 Jan 2026 20:47:27 +0100
X-Gm-Features: AZwV_QhMfL4hQaeUnA-dk4TL1Qjc8lTmxpbV_QcnWyLhkyyZFquuhwL6kPGc4Cw
Message-ID: <CAOQ4uxhtorpd6FVsaGO=NdRD72MxeDyabip84ctQYSNufobS8w@mail.gmail.com>
To: Chuck Lever <cel@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 15, 2026 at 8:37 PM Chuck Lever wrote: > > On
 1/15/26 2:14 PM, Amir Goldstein wrote: > > On Thu, Jan 15, 2026 at 7:32 PM
 Chuck Lever wrote: > >> > >> > >> > >> On Thu, Jan 15, 2026, at [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.43 listed in wl.mailspike.net]
X-Headers-End: 1vgTJp-00059U-W2
Subject: Re: [Jfs-discussion] [PATCH 00/29] fs: require filesystems to
 explicitly opt-in to nfsd export support
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
 samba-technical@lists.samba.org, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, Hugh Dickins <hughd@google.com>,
 Dai Ngo <Dai.Ngo@oracle.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Christoph Hellwig <hch@infradead.org>, NeilBrown <neil@brown.name>,
 Gao Xiang <xiang@kernel.org>, linux-ext4@vger.kernel.org,
 Salah Triki <salah.triki@gmail.com>, linux-mm@kvack.org,
 devel@lists.orangefs.org, Shyam Prasad N <sprasad@microsoft.com>,
 Olga Kornievskaia <okorniev@redhat.com>, linux-cifs@vger.kernel.org,
 Dave Kleikamp <shaggy@kernel.org>, Chao Yu <chao@kernel.org>,
 linux-nfs@vger.kernel.org, Tom Talpey <tom@talpey.com>,
 ocfs2-devel@lists.linux.dev, Bharath SM <bharathsm@microsoft.com>,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Gruenbacher <agruenba@redhat.com>, gfs2@lists.linux.dev,
 Christian Brauner <brauner@kernel.org>, Theodore Tso <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, linux-erofs@lists.ozlabs.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
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

T24gVGh1LCBKYW4gMTUsIDIwMjYgYXQgODozN+KAr1BNIENodWNrIExldmVyIDxjZWxAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KPiBPbiAxLzE1LzI2IDI6MTQgUE0sIEFtaXIgR29sZHN0ZWluIHdyb3Rl
Ogo+ID4gT24gVGh1LCBKYW4gMTUsIDIwMjYgYXQgNzozMuKAr1BNIENodWNrIExldmVyIDxjZWxA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4KPiA+Pgo+ID4+Cj4gPj4gT24gVGh1LCBKYW4gMTUsIDIw
MjYsIGF0IDE6MTcgUE0sIEFtaXIgR29sZHN0ZWluIHdyb3RlOgo+ID4+PiBPbiBUaHUsIEphbiAx
NSwgMjAyNiBhdCA2OjQ44oCvUE0gSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVsLm9yZz4gd3Jv
dGU6Cj4gPj4+Pgo+ID4+Pj4gSW4gcmVjZW50IHllYXJzLCBhIG51bWJlciBvZiBmaWxlc3lzdGVt
cyB0aGF0IGNhbid0IHByZXNlbnQgc3RhYmxlCj4gPj4+PiBmaWxlaGFuZGxlcyBoYXZlIGdyb3du
IHN0cnVjdCBleHBvcnRfb3BlcmF0aW9ucy4gVGhleSd2ZSBtb3N0bHkgZG9uZQo+ID4+Pj4gdGhp
cyBmb3IgbG9jYWwgdXNlLWNhc2VzIChlbmFibGluZyBvcGVuX2J5X2hhbmRsZV9hdCgpIGFuZCB0
aGUgbGlrZSkuCj4gPj4+PiBVbmZvcnR1bmF0ZWx5LCBoYXZpbmcgZXhwb3J0X29wZXJhdGlvbnMg
aXMgZ2VuZXJhbGx5IHN1ZmZpY2llbnQgdG8gbWFrZQo+ID4+Pj4gYSBmaWxlc3lzdGVtIGJlIGNv
bnNpZGVyZWQgZXhwb3J0YWJsZSB2aWEgbmZzZCwgYnV0IHRoYXQgcmVxdWlyZXMgdGhhdAo+ID4+
Pj4gdGhlIHNlcnZlciBwcmVzZW50IHN0YWJsZSBmaWxlaGFuZGxlcy4KPiA+Pj4KPiA+Pj4gV2hl
cmUgZG9lcyB0aGUgdGVybSAic3RhYmxlIGZpbGUgaGFuZGxlcyIgY29tZSBmcm9tPyBhbmQgd2hh
dCBkb2VzIGl0IG1lYW4/Cj4gPj4+IFdoeSBub3QgInBlcnNpc3RlbnQgaGFuZGxlcyIsIHdoaWNo
IGlzIGRlc2NyaWJlZCBpbiBORlMgYW5kIFNNQiBzcGVjcz8KPiA+Pj4KPiA+Pj4gTm90IHRvIG1l
bnRpb24gdGhhdCBFWFBPUlRfT1BfUEVSU0lTVEVOVF9IQU5ETEVTIHdhcyBBY2tlZAo+ID4+PiBi
eSBib3RoIENocmlzdG9waCBhbmQgQ2hyaXN0aWFuOgo+ID4+Pgo+ID4+PiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1mc2RldmVsLzIwMjYwMTE1LXJ1bmRnYW5nLWxlaWhnYWJlLTEyMDE4
ZTkzYzAwY0BicmF1bmVyLwo+ID4+Pgo+ID4+PiBBbSBJIG1pc3NpbmcgYW55dGhpbmc/Cj4gPj4K
PiA+PiBQRVJTSVNURU5UIGdlbmVyYWxseSBpbXBsaWVzIHRoYXQgdGhlIGZpbGUgaGFuZGxlIGlz
IHNhdmVkIG9uCj4gPj4gcGVyc2lzdGVudCBzdG9yYWdlLiBUaGlzIGlzIG5vdCB0cnVlIG9mIHRt
cGZzLgo+ID4KPiA+IFRoYXQncyBvbmUgd2F5IG9mIGludGVycHJldGluZyAicGVyc2lzdGVudCIu
Cj4gPiBBbm90aGVyIHdheSBpcyAiY29udGludWluZyB0byBleGlzdCBvciBvY2N1ciBvdmVyIGEg
cHJvbG9uZ2VkIHBlcmlvZC4iCj4gPiB3aGljaCB3b3JrcyB3ZWxsIGZvciB0bXBmcyB0aGF0IGlz
IG1vdW50ZWQgZm9yIGEgbG9uZyB0aW1lLgo+Cj4gSSB0aGluayB3ZSBjYW4gYmUgYSBsb3QgbW9y
ZSBwcmVjaXNlIGFib3V0IHRoZSBndWFyYW50ZWU6IFRoZSBmaWxlCj4gaGFuZGxlIGRvZXMgbm90
IGNoYW5nZSBmb3IgdGhlIGxpZmUgb2YgdGhlIGlub2RlIGl0IHJlcHJlc2VudHMuIEl0Cj4gaGFz
IG5vdGhpbmcgdG8gZG8gd2l0aCB3aGV0aGVyIHRoZSBmaWxlIHN5c3RlbSBpcyBtb3VudGVkLgo+
Cj4KPiA+IEJ1dCBJIGFtIGNvbmZ1c2VkLCBiZWNhdXNlIEkgd2VudCBsb29raW5nIGZvciB3aGVy
ZSBKZWZmIHNhaWQgdGhhdAo+ID4geW91IHN1Z2dlc3RlZCBzdGFibGUgZmlsZSBoYW5kbGVzIGFu
ZCB0aGlzIGlzIHdoYXQgSSBmb3VuZCB0aGF0IHlvdSB3cm90ZToKPiA+Cj4gPiAidG1wZnMgZmls
ZWhhbmRsZXMgYWxpZ24gcXVpdGUgd2VsbCB3aXRoIHRoZSB0cmFkaXRpb25hbCBkZWZpbml0aW9u
Cj4gPiAgb2YgcGVyc2lzdGVudCBmaWxlaGFuZGxlcy4gdG1wZnMgZmlsZWhhbmRsZXMgbGl2ZSBh
cyBsb25nIGFzIHRtcGZzIGZpbGVzIGRvLAo+ID4gIGFuZCB0aGF0IGlzIGFsbCB0aGF0IGlzIHJl
cXVpcmVkIHRvIGJlIGNvbnNpZGVyZWQgInBlcnNpc3RlbnQiLgo+Cj4gSSBjaGFuZ2VkIG15IG1p
bmQgYWJvdXQgdGhlIG5hbWUsIGFuZCBJIGxldCBKZWZmIGtub3cgdGhhdCBwcml2YXRlbHkKPiB3
aGVuIGhlIGFza2VkIG1lIHRvIGxvb2sgYXQgdGhlc2UgcGF0Y2hlcyB0aGlzIG1vcm5pbmcuCj4K
Pgo+ID4+IFRoZSB1c2Ugb2YgInN0YWJsZSIgbWVhbnMgdGhhdCB0aGUgZmlsZSBoYW5kbGUgaXMg
c3RhYmxlIGZvcgo+ID4+IHRoZSBsaWZlIG9mIHRoZSBmaWxlLiBUaGlzIC9pcy8gdHJ1ZSBvZiB0
bXBmcy4KPiA+Cj4gPiBJIGNhbiBsaXZlIHdpdGggU1RBQkxFX0hBTkRMRVMgSSBkb24ndCBtaW5k
IGFzIG11Y2gsCj4gPiBJIHVuZGVyc3RhbmQgd2hhdCBpdCBtZWFucywgYnV0IHRoZSBkZWZpbml0
aW9uIGFib3ZlIGlzIGludmVudGVkLAo+ID4gd2hlcmVhcyB0aGUgdGVybSBwZXJzaXN0ZW50IGhh
bmRsZXMgaXMgd2VsbCBrbm93biBhbmQgd2VsbCBkZWZpbmVkLgo+Cj4gQW5vdGhlciByZWFzb24g
bm90IHRvIGFkb3B0IHRoZSBzYW1lIHRlcm1pbm9sb2d5IGFzIE5GUyBpcyB0aGF0Cj4gc29tZW9u
ZSBtaWdodCBjb21lIGFsb25nIGFuZCBpbXBsZW1lbnQgTkZTdjQncyBWT0xBVElMRSBmaWxlCj4g
aGFuZGxlcyBpbiBMaW51eCwgYW5kIHRoZW4gc2F5ICJPSywgL25vdy8gY2FuIHdlIGV4cG9ydCBj
Z3JvdXBmcz8iCj4gQW5kIHRoZW4gTGludXggd2lsbCBiZSBzdHVjayB3aXRoIG92ZXJsb2FkZWQg
dGVybWlub2xvZ3kgYW5kIHdlJ2xsCj4gc3RpbGwgd2FudCB0byBzYXkgIk5PLCBORlMgZG9lc24n
dCBzdXBwb3J0IGNncm91cGZzIi4KPgo+IEp1c3QgYSByYW5kb20gdGhvdWdodC4KCkdvb2QgYXJn
dW1lbnQuIEknbSBmaW5lIHdpdGggc3RhYmxlIGFzIHdlbGwgOikKClRoYW5rcywKQW1pci4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9u
Cg==
