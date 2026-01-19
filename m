Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E14BD3B1CC
	for <lists+jfs-discussion@lfdr.de>; Mon, 19 Jan 2026 17:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m0jWw7WxfzO8cfuywS6Lw2U2PK7L9kzOnDJLmzh8Le0=; b=eV5T7zZLLyvlQHZLnIjyrpCZKq
	ndxEc2/1bCq07m5xh0Pl7b5ai+QoXpQdksgGjGWa/6Wkf+AUoOc1657EwHbDw18ta9R0KmtcrhjI6
	TV1qG7SfSEmDMSyXu5FDVl+T+kR49LVsvjbUs9Z28PC/4NJ7dHWjW5vXqg9k3JQIH9g0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vhsLx-0003mo-K6;
	Mon, 19 Jan 2026 16:43:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vhsLv-0003mg-Ro
 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jan 2026 16:43:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t7xapJC59KqqTTsHRvPEloTsuOjJhUfycEcUpCAL4U8=; b=kL467upNh1k9xcORPA4ekjtaht
 VmtTj9QLS43BmrLqIiXgUtoKFwEkBwbcLhNt2cMjoY/92pXEJYomdO7JEgBs2oK5Qxkuo7NiaIhjY
 YjRMALGnpqx8gQkPjbMFGBc3bBE5BZh4GNmkE6AglehersclB6Qol3rIUA/ZqXk7Y4mU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t7xapJC59KqqTTsHRvPEloTsuOjJhUfycEcUpCAL4U8=; b=J1SOzcsBg5m39WplY3TgwMhg2O
 kB2abLISEKO5wobb3ccf1DBSmYjBFVbgScleTjll/NDhYYxNZyq5WW8iKcqW+xkFC0tpK+tRv6Ifk
 ogJvfeI6L0HTBvd+C4/mmVJ1ZsCEnAJax6K7TcGs10WIfYA07Wfqq3jO336Cq1qjvoRw=;
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vhsLv-0000cB-5g for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jan 2026 16:43:43 +0000
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-64b9b0b4d5dso9321436a12.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 19 Jan 2026 08:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768841011; x=1769445811; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=t7xapJC59KqqTTsHRvPEloTsuOjJhUfycEcUpCAL4U8=;
 b=MWXugXApIeltGTNBLt62Vwvd9Z9c22HnmuQciiDXosgsBbpEdogaQqkOUg8XBH+538
 /D0PXiBo77ylHB/wiTte6+zY7tkcCwZhIamuZgBuWMqTqE+l6QNhNdSMMW1Gt5yvCswf
 QulLMu0Crffr2yWBiChDqgZEPfQZ28dHLjUuHqkLCrsA+cu9xl+fKd0Hh92NaCUt3xZ6
 kkRk8PWskJRi2oiifSNlbRA2A0xt4/vk+pDl2mtA6R56kosH/WU9q98gPOjWpG1pzUi9
 NagKcpXF4PB4FmdBpaayLe2n2omjTResBCjwhqaZS/ERN2hccpcU8H6+Unb6X5W3vk5b
 4cMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768841011; x=1769445811;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=t7xapJC59KqqTTsHRvPEloTsuOjJhUfycEcUpCAL4U8=;
 b=HRu8QI7UhrX5M08BopzBoaMeylCEv7E9INL5ED/IJhOlPiI22CDnioCHMMmSBZuR4Y
 hFTicoBSiTWqw1D/05kIQlLmrX2a6uaNQW57tygzGHowDFP4xZtcaD4Ipz/vVay5GmD1
 pzQxqvao+N9nBCt0mqsVyD8vLGbHgAi1z6VkWvqZtLGdAi5AeJuMH8h6LtDqPR529QLi
 3QxcdhbaFbw8Zbheg6i+qXuXi8Mn9+dHHHdtnCf8kfWRFVLt6hah6sBoB5SzfcepFW5x
 6xjOHt0soKrRJNAdlZPNrpPFKoRq3SaGNgxqzTaOBCtOOhAtVeAjTKmRTuVIHTVIYUh0
 LdMQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVydEM7mIgApRSAu66un4Ac7Z4Ez6rGY7Y0dpHRT3j2XyTmQupVVMCLGOSm3arcSWwJXPxcBaxv5gfvLJiLeg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxmdmcgY+QVokoIJsnF8/+67JNiynYzWlaHnYo0bmeYU8jJJ18D
 7CWgK38tz60jJv+vBKk9NiW/5oLymxte9RNxX/xmdliQ94/gpZQsvUF+TNObrgC2NPVQZRKsjJg
 fpU6VHAnHuzwscXQNSHDCFfYwcPE/76g=
X-Gm-Gg: AZuq6aKm2t4SuQGxA4IGlhhaZIdTqHD/G4uU+lHaCjyk2g5SSPclgAk2g0GT6Db8I3V
 SH+RCKYZC0n0zOghBBsakmVtzUfIuLoIweQfF4BhKGAVC27307eHJLBZk1xOZS9LD9wRxqu1we9
 0K9FRVx68CFUsCBqAQVCWt7f7UpzJ3/U17VH/ED8+g55N5EiuNAIydiBdLJxPwIkyD9nRyr6L5l
 D5o2PmEyu3TnRtHcUmGh42gxAZWmFi3z56JdSNAb4eYWO7uaQuhXmxSJ2wC2ls//LIK2KSUahLq
 YRW03t2TrH6NjaCYwOu84YAwny3Bk+Vvw3V+qHnc
X-Received: by 2002:a05:6402:5106:b0:64c:584c:556c with SMTP id
 4fb4d7f45d1cf-654bb6192admr8530585a12.30.1768841011353; Mon, 19 Jan 2026
 08:43:31 -0800 (PST)
MIME-Version: 1.0
References: <20260119-exportfs-nfsd-v2-0-d93368f903bd@kernel.org>
 <20260119-exportfs-nfsd-v2-27-d93368f903bd@kernel.org>
In-Reply-To: <20260119-exportfs-nfsd-v2-27-d93368f903bd@kernel.org>
Date: Mon, 19 Jan 2026 17:43:19 +0100
X-Gm-Features: AZwV_QgQ6YFmczFqASwqjyOa509PoCTPsOB-sET1G173IBHOd4X5kFjH9N6z5MI
Message-ID: <CAOQ4uxjyTdf21G1Y=_5Eox58drVPA0gAMeSQZxh=T36_yzssNw@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 19, 2026 at 5:30 PM Jeff Layton wrote: > > Add
 the EXPORT_OP_STABLE_HANDLES flag to fuse export operations to indicate >
 that this filesystem can be exported via NFS. > > Signed-off-by: [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
X-Headers-End: 1vhsLv-0000cB-5g
Subject: Re: [Jfs-discussion] [PATCH v2 27/31] fuse: add
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

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgNTozMOKAr1BNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gQWRkIHRoZSBFWFBPUlRfT1BfU1RBQkxFX0hBTkRMRVMgZmxh
ZyB0byBmdXNlIGV4cG9ydCBvcGVyYXRpb25zIHRvIGluZGljYXRlCj4gdGhhdCB0aGlzIGZpbGVz
eXN0ZW0gY2FuIGJlIGV4cG9ydGVkIHZpYSBORlMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmIExh
eXRvbiA8amxheXRvbkBrZXJuZWwub3JnPgpSZXZpZXdlZC1ieTogQW1pciBHb2xkc3RlaW4gPGFt
aXI3M2lsQGdtYWlsLmNvbT4KCj4gLS0tCj4gIGZzL2Z1c2UvaW5vZGUuYyB8IDEgKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9mcy9mdXNlL2lub2Rl
LmMgYi9mcy9mdXNlL2lub2RlLmMKPiBpbmRleCA4MTllNTBkNjY2MjI0YTYyMDFjZmM3ZjQ1MGUw
YmQzN2JmZTMyODEwLi5kZjkyNDE0ZTkwM2IyMDBmZWRiOWRjNzc3YjkxM2RhZTFlMmQwNzQxIDEw
MDY0NAo+IC0tLSBhL2ZzL2Z1c2UvaW5vZGUuYwo+ICsrKyBiL2ZzL2Z1c2UvaW5vZGUuYwo+IEBA
IC0xMjE1LDYgKzEyMTUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGV4cG9ydF9vcGVyYXRpb25z
IGZ1c2VfZXhwb3J0X29wZXJhdGlvbnMgPSB7Cj4gICAgICAgICAuZmhfdG9fcGFyZW50ICAgPSBm
dXNlX2ZoX3RvX3BhcmVudCwKPiAgICAgICAgIC5lbmNvZGVfZmggICAgICA9IGZ1c2VfZW5jb2Rl
X2ZoLAo+ICAgICAgICAgLmdldF9wYXJlbnQgICAgID0gZnVzZV9nZXRfcGFyZW50LAo+ICsgICAg
ICAgLmZsYWdzICAgICAgICAgID0gRVhQT1JUX09QX1NUQUJMRV9IQU5ETEVTLAo+ICB9Owo+Cj4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VwZXJfb3BlcmF0aW9ucyBmdXNlX3N1cGVyX29wZXJhdGlv
bnMgPSB7Cj4KPiAtLQo+IDIuNTIuMAo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
