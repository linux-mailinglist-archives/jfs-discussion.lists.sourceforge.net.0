Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9165D1F55B
	for <lists+jfs-discussion@lfdr.de>; Wed, 14 Jan 2026 15:15:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RbZv0CsTvPvSS11ZacK6OQbA5Kt9AIIrJ5I64GTWVx4=; b=cd/09WgmiEOdQENOOTyR212UP2
	zfXf6j965KY3R6qPmt/vTbEmhqzX1h8DhxV4UI+LWGC8IuMA4oDhOGWelA5ASffgqrogMzXfrXTvV
	I6iG4ENAkekTxXwg319EJOD8S3IOlgVh3+FCXXPAtpuy6U3fxKxHE+ysPBht3gQHuKEI=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vg1dr-0008Bt-DT;
	Wed, 14 Jan 2026 14:14:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vg1dp-0008Bn-Ty
 for jfs-discussion@lists.sourceforge.net;
 Wed, 14 Jan 2026 14:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LXI/JsxBbKF9LcEy7WQN83dkdhDN53l6d1BjVlfpBx8=; b=dd2cLyQ3gUR1pQraTEEN4rn5Sg
 5EF+aNSkTq2tHBKtfQLgWhaS8lHERDwZtNY1lXgOKjhU0UpeXNKbVw5LrmQSUndYTetgQtFnSqFm4
 AeSB7POVvYuqBREyLtrRorCz7TfEZ0EUrtM5jufsXwiz8qNkJFPKaL1TAmqxSEnZ3ams=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LXI/JsxBbKF9LcEy7WQN83dkdhDN53l6d1BjVlfpBx8=; b=PGwaZlYTpdT8Q0cNaweUrJdvx3
 X1F5BoVvlJr++o1Bz9y6fQQ3TD56lcMUbIgoDgD/ihLE2s4dRxazbaeg1oV95w/tBmdNaHaN7yAZX
 Qg4wCrEPS/Cfm1a4umgzLXBG2/K5pL8KWFm8u2ZYnCT8QnfGnlcow5e1e53hddqxS1bw=;
Received: from mail-ed1-f54.google.com ([209.85.208.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vg1dp-0000ZQ-Ex for jfs-discussion@lists.sourceforge.net;
 Wed, 14 Jan 2026 14:14:33 +0000
Received: by mail-ed1-f54.google.com with SMTP id
 4fb4d7f45d1cf-64b608ffca7so13667624a12.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 14 Jan 2026 06:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768400067; x=1769004867; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LXI/JsxBbKF9LcEy7WQN83dkdhDN53l6d1BjVlfpBx8=;
 b=KtW++yBVx9/NdhaqwUeeUqbW043Xed+esAu/hyawnuATTKrWq0iYPtG3cqDQ8PXeBW
 hTkcrgysRWaNDilK3SwWGb4/Pab97P5Y/2GS1CaboJySAnEwGITZnxbobkuzxIPqkn29
 ZGoHrl1erY09y0UOG2b/bKbbauM1r5SHE4AbCJy/u50HldTC+OvD7RB9yoLXzd85f207
 0XsfSPLB/Dok4qer4uO7iRDQ5+QdnQ+xV0Q3OL2XPbaOwi3NEy1tdfUtTTaD1QPYIMK1
 oApDx8gbnEkBSotrMMZt5U+ABU7TD725MowgN/P8/FMJcYmcGp4iywMHZ4TWY5ERV7Es
 dAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768400067; x=1769004867;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=LXI/JsxBbKF9LcEy7WQN83dkdhDN53l6d1BjVlfpBx8=;
 b=wGROuDo+oE0WKp3bwsS2yc++71Xfk7arJjHntctFAVhS8z0CFUUHi0azkdAkZxyaAX
 ZljWVbAj3nPblOzd6+INbnU76peiMUAtSsZbvR8Tq0kXCeX4fHdUieVcbqkZdpmKXsqL
 lbZTBYUWaofmS3KcAxCSowSpp52EJ9JQdxW5DJMZzVM1+0FFqTJOKPCb2mjrEhJkCRAo
 CsW2H7y2ZrNYd23r54jCc09sYohzp3WXvFslhLZJd/8rFBjuvvjpxdiGYIU5uyMvGi8s
 17fzs7D/5nLL+fXUSnwHJO8FY7iZlQcpqAf6BTJ5ysRqWjxXZFbRM5qQGM6M5VKtPjx0
 r4bg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWR7AixytgF2x2jy3UdxQqyhIGQ+4ZQXCca0gPRxSORJYyYCcDuxAfzbxDytUn/NWxbnCeOy/63eCMI3NXc0A==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwL82l4zVK159YDfN/1IJ1hkReEXCTplwbFNDlo6/DFhzVgyjgS
 EWO53R6wSIcMvxEPfQ5RsP4cfvD7ACFUGCsW9kumc1cabk+VGfv3Mr0qms3gwq0lmH25NQiRgh7
 zGHn6dsyr5RovUhpmxCQkBh19KG/++jE=
X-Gm-Gg: AY/fxX5eKiQI8PieSZFOtGzJCLQYGSsHPr7Z8w0zWHu5VpSXkZP8mb2ecS2D1aKKIYH
 xkONzlQNi44lIjMbcOhvoTbqDLOghkjOTo8W5DAa0RV1+G52K6/9uIW5ucuAbK3cUkTPwBj2pw5
 IhpVsiOm+QFFLmbXQ7k6vqvdYRKw651poEWLPFs6Na1TNL8oQPzcn7XZo8gb2phLgFYlcvWwXkm
 IrWFGzDzoSe32bxVgznDF3UuGx+i6VE2O2OUSudTM2LDHCMTSMGStW15R1imeWLkczmsDlNi7EL
 jsU2MNhvgbAPa+Blvi8PI89LEfIfLw==
X-Received: by 2002:a05:6402:210c:b0:64b:42a6:3946 with SMTP id
 4fb4d7f45d1cf-653ec10b2c1mr2391600a12.7.1768400066360; Wed, 14 Jan 2026
 06:14:26 -0800 (PST)
MIME-Version: 1.0
References: <8af369636c32b868f83669c49aea708ca3b894ac.camel@kernel.org>
 <CAOQ4uxgD+Sgbbg9K2U0SF9TyUOBb==Z6auShUWc4FfPaDCQ=rg@mail.gmail.com>
 <ec78bf021fa1f6243798945943541ba171e337e7.camel@kernel.org>
 <cb5d2da6-2090-4639-ad96-138342bba56d@oracle.com>
 <ce700ee20834631eceededc8cd15fc5d00fee28e.camel@kernel.org>
 <20260113-mondlicht-raven-82fc4eb70e9d@brauner>
 <aWZcoyQLvbJKUxDU@infradead.org>
 <ce418800f06aa61a7f47f0d19394988f87a3da07.camel@kernel.org>
 <aWc3mwBNs8LNFN4W@infradead.org>
 <CAOQ4uxhMjitW_DC9WK9eku51gE1Ft+ENhD=qq3uehwrHO=RByA@mail.gmail.com>
 <aWeUv2UUJ_NdgozS@infradead.org>
 <c40862cd65a059ad45fa88f5473722ea5c5f70a5.camel@kernel.org>
In-Reply-To: <c40862cd65a059ad45fa88f5473722ea5c5f70a5.camel@kernel.org>
Date: Wed, 14 Jan 2026 15:14:13 +0100
X-Gm-Features: AZwV_QgcgdaBnds1gv_V4-TD2P8OEmx8uWYCKQoKmrAoITMmwNZxXsYhEeLI48A
Message-ID: <CAOQ4uxhDwR7dteLaqURX+9CooGM1hA7PL6KnVmSwX11ZdKxZTA@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 14, 2026 at 2:41 PM Jeff Layton wrote: > > On
 Wed, 2026-01-14 at 05:06 -0800, Christoph Hellwig wrote: > > On Wed, Jan 14,
 2026 at 10:34:04AM +0100, Amir Goldstein wrote: > > > On Wed, J [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.54 listed in wl.mailspike.net]
X-Headers-End: 1vg1dp-0000ZQ-Ex
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
 Christoph Hellwig <hch@infradead.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 linux-mm@kvack.org, linux-btrfs@vger.kernel.org, Gao Xiang <xiang@kernel.org>,
 linux-ext4@vger.kernel.org, Salah Triki <salah.triki@gmail.com>,
 Carlos Maiolino <cem@kernel.org>, Dominique Martinet <asmadeus@codewreck.org>,
 Shyam Prasad N <sprasad@microsoft.com>, samba-technical@lists.samba.org,
 linux-cifs@vger.kernel.org, Chao Yu <chao@kernel.org>,
 linux-nfs@vger.kernel.org, Tom Talpey <tom@talpey.com>,
 ocfs2-devel@lists.linux.dev, Bharath SM <bharathsm@microsoft.com>,
 linux-nilfs@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
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

T24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMjo0MeKAr1BNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCAyMDI2LTAxLTE0IGF0IDA1OjA2IC0wODAwLCBD
aHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiA+IE9uIFdlZCwgSmFuIDE0LCAyMDI2IGF0IDEwOjM0
OjA0QU0gKzAxMDAsIEFtaXIgR29sZHN0ZWluIHdyb3RlOgo+ID4gPiBPbiBXZWQsIEphbiAxNCwg
MjAyNiBhdCA3OjI44oCvQU0gQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBpbmZyYWRlYWQub3JnPiB3
cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIFR1ZSwgSmFuIDEzLCAyMDI2IGF0IDEyOjA2OjQyUE0g
LTA1MDAsIEplZmYgTGF5dG9uIHdyb3RlOgo+ID4gPiA+ID4gRmFpciBwb2ludCwgYnV0IGl0J3Mg
bm90IHRoYXQgaGFyZCB0byBjb25jZWl2ZSBvZiBhIHNpdHVhdGlvbiB3aGVyZQo+ID4gPiA+ID4g
c29tZW9uZSBpbmFkdmVydGFudGx5IGV4cG9ydHMgY2dyb3VwZnMgb3Igc29tZSBzaW1pbGFyIGZp
bGVzeXN0ZW06Cj4gPiA+ID4KPiA+ID4gPiBTdXJlLiAgQnV0IGhvdyBpcyB0aGlzIHdvcnNlIHRo
YW4gYWNjaWRlbnRhbGx5IGV4cG9ydGluZyBwcml2YXRlIGRhdGEKPiA+ID4gPiBvciBhbnkgb3Ro
ZXIgbWlzY29uZmlndXJhdGlvbj8KPiA+ID4gPgo+ID4gPgo+ID4gPiBNeSBQT1YgaXMgdGhhdCBp
dCBpcyBsZXNzIGFib3V0IHNlY3VyaXR5IChhcyB5b3VyIHF1ZXN0aW9uIGltcGxpZXMpLCBhbmQK
PiA+ID4gbW9yZSBhYm91dCBjb3JyZWN0bmVzcy4KPiA+Cj4gPiBJIHdhcyBqdXN0IHJlcGx5aW5n
IHRvIEplZmYuCj4gPgo+ID4gPiBUaGUgc3BlY2lhbCB0aGluZyBhYm91dCBORlMgZXhwb3J0LCBh
cyBvcHBvc2VkIHRvLCBzYXksIGtzbWJkLCBpcwo+ID4gPiBvcGVuIGJ5IGZpbGUgaGFuZGxlLCBJ
T1csIHRoZSBleHBvcnRfb3BlcmF0aW9ucy4KPiA+ID4KPiA+ID4gSSBwZXJjZWl2ZSB0aGlzIGFz
IGEgdmVyeSBzdHJhbmdlIGFuZCB1bmRlc2lyZWQgc2l0dWF0aW9uIHdoZW4gTkZTCj4gPiA+IGZp
bGUgaGFuZGxlcyBkbyBub3QgYmVoYXZlIGFzIHBlcnNpc3RlbnQgZmlsZSBoYW5kbGVzLgo+ID4K
PiA+IFRoYXQgaXMgbm90IGp1c3QgdmVyeSBzdHJhbmdlLCBidXQgYWN0dWFsbHkgYnJva2VuIChk
aXNjb3VudGluZyB0aGUKPiA+IG9ic2N1cmUgdm9sYXRpbGUgZmlsZSBoYW5kbGVzIGZlYXR1cmVz
IG5vdCBpbXBsZW1lbnRlZCBpbiBMaW51eCBORlMKPiA+IGFuZCBORlNEKS4gIEFuZCB0aGUgZXhw
b3J0IG9wcyBhbHdheXMgd29ya2VkIHVuZGVyIHRoZSBhc3N1bXB0aW9uCj4gPiB0aGF0IHRoZXNl
IGZpbGUgaGFuZGxlcyBhcmUgaW5kZWVkIHBlcnNpc3RlbnQuICBJZiB0aGV5J3JlIG5vdCB3ZQo+
ID4gZG8gaGF2ZSBhIHByb2JsZW0uCj4gPgo+ID4gPgo+ID4gPiBjZ3JvdXBmcywgcGlkZnMsIG5z
ZnMsIGFsbCBnYWluZWQgb3Blbl9ieV9oYW5kbGVfYXQoKSBjYXBhYmlsaXR5IGZvcgo+ID4gPiBh
IGtub3duIHJlYXNvbiwgd2hpY2ggd2FzIE5PVCBORlMgZXhwb3J0Lgo+ID4gPgo+ID4gPiBJZiB0
aGUgYXV0aG9yIG9mIG9wZW5fYnlfaGFuZGxlX2F0KCkgc3VwcG9ydCAoaS5lLiBicmF1bmVyKSBk
b2VzIG5vdAo+ID4gPiB3aXNoIHRvIGltcGx5IHRoYXQgdGhvc2UgZnMgc2hvdWxkIGJlIGV4cG9y
dGVkIHRvIE5GUywgd2h5IG9iamVjdD8KPiA+Cj4gPiBCZWNhdXNlICJ3YW50IHRvIGV4cG9ydCIg
aXMgYSBzdHVwaWQgY2F0ZWdvcnkuCj4gPgo+ID4gT1RPSCAiTkZTIGV4cG9ydGluZyBkb2Vzbid0
IGFjdHVhbGx5IHByb3Blcmx5IHdvcmsgYmVjYXVzZSBzb21lb25lCj4gPiBvdmVybG9hZGVkIGV4
cG9ydF9vcHMgd2l0aCBkaWZmZXJlbnQgc2VtYW50aWNzIiBpcyBhIHZhbGlkIGNhdGVnb3J5Lgo+
ID4KPgo+IGNncm91cGZzIGRlZmluaXRlbHkgZG9lc24ndCBiZWhhdmUgYXMgZXhwZWN0ZWQgd2hl
biBleHBvcnRlZCB2aWEgTkZTLgo+IFRoZSBmaWxlcyBhcmVuJ3QgcmVhZGFibGUsIGF0IGxlYXN0
LiBJJ2QgYWxzbyBiZSBzdXJwcmlzZWQgaWYgdGhlCj4gZmlsZWhhbmRsZXMgd2VyZSBzdGFibGUg
YWNyb3NzIGEgcmVib290LCB3aGljaCBpcyBzb3J0IG9mIG5lY2Vzc2FyeSBmb3IKPiBwcm9wZXIg
b3BlcmF0aW9uLiBJIGRpZG4ndCB0ZXN0IHdyaXRpbmcsIGJ1dCB3aG8ga25vd3Mgd2hldGhlciB0
aGF0Cj4gbWlnaHQgYWxzbyBqdXN0IG5vdCB3b3JrLCBjcmFzaCB0aGUgYm94LCBvciBkbyBzb21l
dGhpbmcgZWxzZSBlbnRpcmVseS4KPgo+IEkgaW1hZ2luZSB0aGlzIGlzIHRoZSBjYXNlIGZvciBh
bGwgc29ydHMgb2YgZmlsZXN5c3RlbXMgbGlrZSAvcHJvYywKPiAvc3lzLCBldGMuIFRob3NlIGFy
ZW4ndCBleHBvcnRhYmxlIHRvZGF5ICh0byBteSBrbm93bGVkZ2UpLCBidXQgd2UncmUKPiBncm93
aW5nIGV4cG9ydF9vcGVyYXRpb25zIGFjcm9zcyBhIHdpZGUgcmFuZ2Ugb2YgZnMncyB0aGVzZSBk
YXlzLgo+Cj4gSSdkIHByZWZlciB0aGF0IHdlIHJlcXVpcmUgc29tZW9uZSB0byB0YWtlIHRoZSBk
ZWxpYmVyYXRlIHN0ZXAgdG8gc2F5Cj4gInllcywgYWxsb3cgbmZzZCB0byBhY2Nlc3MgdGhpcyB0
eXBlIG9mIGZpbGVzeXN0ZW0iLgo+Cj4gPiA+IFdlIGNvdWxkIGhhdmUgdGhlIG9wdC1pbi9vdXQg
b2YgTkZTIGV4cG9ydCBmaXhlcyBwZXIgRVhQT1JUX09QXwo+ID4gPiBmbGFncyBhbmQgd2UgY291
bGQgZXZlbiB0aGluayBvZiBhbGxvd2luZyBhZG1pbiB0byBtYWtlIHRoaXMgZGVjaXNpb24KPiA+
ID4gcGVyIHZmc21vdW50IChlLmcuIGZvciBjZ3JvdXBmcykuCj4gPiA+Cj4gPiA+IEluIGFueSBj
YXNlLCBJIGZhaWwgdG8gc2VlIGhvdyBvYmplY3RpbmcgdG8gdGhlIHBvc3NpYmlsaXR5IG9mIE5G
UyBleHBvcnQKPiA+ID4gb3B0LW91dCBzZXJ2ZXMgYW55b25lLgo+ID4KPiA+IFlvdSdyZSBzdGls
bCB0aGluayBvZiBpdCB0aGUgd3Jvbmcgd2F5LiAgSWYgd2UgZG8gaGF2ZSBmaWxlIHN5c3RlbXMK
PiA+IHRoYXQgYnJlYWsgdGhlIG9yaWdpbmFsIGV4cG9ydGZzIHNlbWFudGljcyB3ZSBuZWVkIHRv
IGZpeCB0aGF0LCBhbmQKPiA+IHNvbWV0aGluZyBsaWtlIGEgInN0YWJsZSBoYW5kbGVzIiBmbGFn
IHdpbGwgd29yayB3ZWxsIGZvciB0aGF0LiAgQnV0Cj4gPiBhIHRvdGFsbHkgYXJiaXRyYXJ5ICJp
cyBleHBvcnRhYmxlIiBmbGFnIGlzIHRvdGFsIG5vbnNlbnNlLgo+CgpWZXJ5IHdlbGwgdGhlbi4K
SG93IGFib3V0IEVYUE9SVF9PUF9QRVJTSVNURU5UX0hBTkRMRVM/CgpUaGlzIHRlcm1pbm9sb2d5
IGlzIGZyb20gdGhlIE5GUyBwcm90b2NvbCBzcGVjIGFuZCBpdCBpcyBhbHNvIHVzZWQKdG8gZGVz
Y3JpYmUgdGhlIHNhbWUgdHJhaXQgaW4gU01CIHByb3RvY29sLgoKPiBUaGUgcHJvYmxlbSB0aGVy
ZSBpcyB0aGF0IHdlIHZlcnkgbXVjaCBkbyB3YW50IHRvIGtlZXAgdG1wZnMKPiBleHBvcnRhYmxl
LCBidXQgaXQgZG9lc24ndCBoYXZlIHN0YWJsZSBoYW5kbGVzIChwZXItc2UpLgoKVGhpbmtpbmcg
b3V0IGxvdWQgLQpJdCB3b3VsZCBiZSBtaXNndWlkZWQgdG8gZGVjbGFyZSB0bXBmcyBhcwpFWFBP
UlRfT1BfUEVSU0lTVEVOVF9IQU5ETEVTCmFuZCByZWdyZXNzaW5nIGV4cG9ydHMgb2YgdG1wZnMg
d2lsbCBzdXJlbHkgbm90IGdvIHVubm90aWNlZC4KCkhvdyBhYm91dCBhZGRpbmcgYW4gZXhwb3J0
ZnMgb3B0aW9uICJwZXJzaXN0ZW50X2hhbmRsZXMiLAp1c2UgaXQgYXMgZGVmYXVsdCBJRkYgbmVp
dGhlciBvcHRpb25zIGZzaWQ9LCB1dWlkPSBhcmUgdXNlZCwKc28gdGhhdCBhdCBsZWFzdCB3aGVu
IGV4cG9ydGluZyB0bXBmcywgZXhwb3J0ZnMgLXYgd2lsbCBzaG93CiJub19wZXJzaXN0ZW50X2hh
bmRsZXMiIGV4cGxpY2l0bHk/CgpUaGFua3MsCkFtaXIuCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpm
cy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
