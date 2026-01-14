Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B0BD2008F
	for <lists+jfs-discussion@lfdr.de>; Wed, 14 Jan 2026 17:03:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:References:In-Reply-To:Message-Id:To:Date:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BfHoBlmC8rjYEsdSwQC2CR7a9w7wvqXlK8e1KuBUsuc=; b=dg4dbndaBPcPFKJIObtbBaMZq9
	dh0cgpy1U4OmYpCGHzAGatIFWFUjy2pTpsAvMzmCXHD/7FXDUdOVQkDnJmEd62SMpxzE2IxIQAy01
	ZfyPu4hyixGDOP+aPtZc4lnuegbM5sIIXMtnN7Pn3RueG+bCF+pyfbGQ7DfGgFULBtTg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vg3KZ-0002Q1-93;
	Wed, 14 Jan 2026 16:02:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cel@kernel.org>) id 1vg2FC-0005PH-DS
 for jfs-discussion@lists.sourceforge.net;
 Wed, 14 Jan 2026 14:53:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xKp2mRX639Xrl1hAH25cMUgzI8E+8kaOkrWTmDZ9gJI=; b=UnUXCwsPAT3hnhULpr8kxyUxm5
 4Oa1UytK9ux+3iVuNZDtbA5gGC0VD9LV6/45vJNxqlK6BsJ2jbfvdmJkvAHiA/+adTBe7LYfHW/Yn
 Oc6ucmjIz9WeCwZlnaGunZBZCffua9Fh+v28IIhosCDoD84Mffs69Fl954yGqByWo0hg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xKp2mRX639Xrl1hAH25cMUgzI8E+8kaOkrWTmDZ9gJI=; b=D2R+Qcw7DAdwV6jIoHPw+irOxw
 DjQUZm0cw1qB2W9e1PyJLqT5apeXdoXZb1P79GGqJZ//zGMIZTfGQAmDJfSJmj6XdPm7VlG3hXHaV
 NB3MePuAxrKy8gGxj2hi6OXb+6DZ8Cq57o7sqCRz3oUrNlnvC8LKjiEfaABp0eQKrpIE=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vg2FC-0002Y1-J6 for jfs-discussion@lists.sourceforge.net;
 Wed, 14 Jan 2026 14:53:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id F2BBC443F1;
 Wed, 14 Jan 2026 14:53:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57505C4AF0B;
 Wed, 14 Jan 2026 14:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1768402384;
 bh=xKp2mRX639Xrl1hAH25cMUgzI8E+8kaOkrWTmDZ9gJI=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=DZ4y7792kI2/4eE5VVTlEy1lwDXzIzeNr2iEGyaqqLMYTsvcSbwt8Bo54fNz4FJrn
 0CjwDI0jj4BZuie48fZ7X8+pogo2m9xuuz5ZkTKqUIWIWMb2aIahe3YDQ1OihTAsyY
 /kSWP/W66gnEfc8gA/3bKKHjBBbzoJWIQmXxEVECLl86oIEVeZwN3rPLewdZXpBLNQ
 4fSATB6J5Q9DEK8WPOow5IHJKdW2q5kckZv1zfwvc/Rackn2AgyYEGYSEHyTHq4m0k
 xzDo6EcWHnQhpPR7xCjV8fvC1tdohxaCsjAOcYPGoYZ1/+HzD4MzDToJBxFdCh/tru
 OSjQsEWq0CzTg==
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
 by mailfauth.phl.internal (Postfix) with ESMTP id 336F2F4006C;
 Wed, 14 Jan 2026 09:53:02 -0500 (EST)
Received: from phl-imap-15 ([10.202.2.104])
 by phl-compute-10.internal (MEProxy); Wed, 14 Jan 2026 09:53:02 -0500
X-ME-Sender: <xms:zq1naTL1verRbjv_OWxa5Qc-mm-FLSmJA57qMcDcmimTH1ZvOzAH8Q>
 <xme:zq1naR8m09634GxEfslbvAHAt_pWKVnj5KMHoclqQy7tbEop4pkDoeOLzOlsxhgNB
 mfBJSAWYD5Pvqo039VVHWSbWWy3lMiNKfBSo92wfzMrsG2olMOvAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvdefgeejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdejnecuhfhrohhmpedfvehhuhgt
 khcunfgvvhgvrhdfuceotggvlheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrh
 hnpefghfeguedtieeiveeugfevtdejfedukeevgfeggfeugfetgfeltdetueelleelteen
 ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhutg
 hklhgvvhgvrhdomhgvshhmthhprghuthhhphgvrhhsohhnrghlihhthidqudeifeegleel
 leehledqfedvleekgeegvdefqdgtvghlpeepkhgvrhhnvghlrdhorhhgsehfrghsthhmrg
 hilhdrtghomhdpnhgspghrtghpthhtohephedtpdhmohguvgepshhmthhpohhuthdprhgt
 phhtthhopegrlhesrghlrghrshgvnhdrnhgvthdprhgtphhtthhopegrshhmrgguvghush
 estghouggvfihrvggtkhdrohhrghdprhgtphhtthhopehlihhnuhigpghoshhssegtrhhu
 uggvsgihthgvrdgtohhmpdhrtghpthhtoheprgguihhlghgvrhdrkhgvrhhnvghlseguih
 hlghgvrhdrtggrpdhrtghpthhtohepshhlrghvrgesughusggvhihkohdrtghomhdprhgt
 phhtthhopehjlhgsvggtsegvvhhilhhplhgrnhdrohhrghdprhgtphhtthhopehmrghrkh
 esfhgrshhhvghhrdgtohhmpdhrtghpthhtoheptghlmhesfhgsrdgtohhmpdhrtghpthht
 ohepnhhitghosehflhhugihnihgtrdhnvght
X-ME-Proxy: <xmx:zq1naR4y4iRWBYp2xNnePgUOv-GP1DKdFBDtDf2IC92YRobPvv4XvQ>
 <xmx:zq1nabUvbFcuW5qmkDCHdiOne_rDLza_EAZnBtIjXTs4zRVj0oLKWg>
 <xmx:zq1naXWzKUDfqjQXjvlbqUXobr95Hj_DLjvdFTe0pPxUPWiy4igVFQ>
 <xmx:zq1naQSTIJTSkNqnVd_7fRCRq8sinXvVVU9WAT0_5jXT_tt716hBhQ>
 <xmx:zq1naeeXm4Q-EAh1xMCT3MnzrdKd7lPZzpjsKoHgYV0ycvEqIoQrdgKM>
Feedback-ID: ifa6e4810:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id F2C75780070; Wed, 14 Jan 2026 09:53:01 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ArEQL-Tet5yZ
Date: Wed, 14 Jan 2026 09:52:34 -0500
To: "Amir Goldstein" <amir73il@gmail.com>, "Jeff Layton" <jlayton@kernel.org>
Message-Id: <5a1730f3-30ff-403c-a460-09a81f9616c5@app.fastmail.com>
In-Reply-To: <CAOQ4uxhDwR7dteLaqURX+9CooGM1hA7PL6KnVmSwX11ZdKxZTA@mail.gmail.com>
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
 <CAOQ4uxhDwR7dteLaqURX+9CooGM1hA7PL6KnVmSwX11ZdKxZTA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 14, 2026, at 9:14 AM, Amir Goldstein wrote: >
 On Wed, Jan 14, 2026 at 2:41 PM Jeff Layton <jlayton@kernel.org> wrote: >
 Very well then. > How about EXPORT_OP_PERSISTENT_HANDLES? > > This terminology
 is from the NFS protocol spec and it is also used > to describe the same
 trait in SMB protocol. > >> The problem there [...] 
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vg2FC-0002Y1-J6
X-Mailman-Approved-At: Wed, 14 Jan 2026 16:02:44 +0000
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
From: Chuck Lever via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Chuck Lever <cel@kernel.org>
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
 linux-f2fs-devel@lists.sourceforge.net, Theodore Tso <tytso@mit.edu>,
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

CgpPbiBXZWQsIEphbiAxNCwgMjAyNiwgYXQgOToxNCBBTSwgQW1pciBHb2xkc3RlaW4gd3JvdGU6
Cj4gT24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMjo0MeKAr1BNIEplZmYgTGF5dG9uIDxqbGF5dG9u
QGtlcm5lbC5vcmc+IHdyb3RlOgoKPiBWZXJ5IHdlbGwgdGhlbi4KPiBIb3cgYWJvdXQgRVhQT1JU
X09QX1BFUlNJU1RFTlRfSEFORExFUz8KPgo+IFRoaXMgdGVybWlub2xvZ3kgaXMgZnJvbSB0aGUg
TkZTIHByb3RvY29sIHNwZWMgYW5kIGl0IGlzIGFsc28gdXNlZAo+IHRvIGRlc2NyaWJlIHRoZSBz
YW1lIHRyYWl0IGluIFNNQiBwcm90b2NvbC4KPgo+PiBUaGUgcHJvYmxlbSB0aGVyZSBpcyB0aGF0
IHdlIHZlcnkgbXVjaCBkbyB3YW50IHRvIGtlZXAgdG1wZnMKPj4gZXhwb3J0YWJsZSwgYnV0IGl0
IGRvZXNuJ3QgaGF2ZSBzdGFibGUgaGFuZGxlcyAocGVyLXNlKS4KPgo+IFRoaW5raW5nIG91dCBs
b3VkIC0KPiBJdCB3b3VsZCBiZSBtaXNndWlkZWQgdG8gZGVjbGFyZSB0bXBmcyBhcwo+IEVYUE9S
VF9PUF9QRVJTSVNURU5UX0hBTkRMRVMKPiBhbmQgcmVncmVzc2luZyBleHBvcnRzIG9mIHRtcGZz
IHdpbGwgc3VyZWx5IG5vdCBnbyB1bm5vdGljZWQuCj4KPiBIb3cgYWJvdXQgYWRkaW5nIGFuIGV4
cG9ydGZzIG9wdGlvbiAicGVyc2lzdGVudF9oYW5kbGVzIiwKPiB1c2UgaXQgYXMgZGVmYXVsdCBJ
RkYgbmVpdGhlciBvcHRpb25zIGZzaWQ9LCB1dWlkPSBhcmUgdXNlZCwKPiBzbyB0aGF0IGF0IGxl
YXN0IHdoZW4gZXhwb3J0aW5nIHRtcGZzLCBleHBvcnRmcyAtdiB3aWxsIHNob3cKPiAibm9fcGVy
c2lzdGVudF9oYW5kbGVzIiBleHBsaWNpdGx5PwoKSSB0aGluayB3ZSBuZWVkIHRvIGJlIGNhcmVm
dWwuIHRtcGZzIGZpbGVoYW5kbGVzIGFsaWduIHF1aXRlCndlbGwgd2l0aCB0aGUgdHJhZGl0aW9u
YWwgZGVmaW5pdGlvbiBvZiBwZXJzaXN0ZW50IGZpbGVoYW5kbGVzLgp0bXBmcyBmaWxlaGFuZGxl
cyBsaXZlIGFzIGxvbmcgYXMgdG1wZnMgZmlsZXMgZG8sIGFuZCB0aGF0IGlzCmFsbCB0aGF0IGlz
IHJlcXVpcmVkIHRvIGJlIGNvbnNpZGVyZWQgInBlcnNpc3RlbnQiLgoKCi0tIApDaHVjayBMZXZl
cgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1
c3Npb24K
