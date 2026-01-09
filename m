Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F06D07F6A
	for <lists+jfs-discussion@lfdr.de>; Fri, 09 Jan 2026 09:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5zqwxckwKCYj2REluSCHw8ctpGsOCtxbXzvlCdh9v7E=; b=D/W2WSOmflFXUYird7Vqnrmhao
	3yHDBpnDvbAvBIArlBp050k9C4hn+OsVA43RmPd13pWRuccKcQh610zSpDHoBw0OH63KH8YaVZ5Kp
	sM6+LulvhvCWw4p5cab+VeRi3OC9mXjAWPbp8sns3NX05REn73FFFFHDdKx3OWcYq5To=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ve8Bd-0007u7-PU;
	Fri, 09 Jan 2026 08:49:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <richard@nod.at>) id 1ve8B0-0007hd-Pe
 for jfs-discussion@lists.sourceforge.net;
 Fri, 09 Jan 2026 08:48:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hi6ZwA10nQeVVLVHSSKeYbeNuIjA/FZtJQ9gk2yneq8=; b=GtMmlGv9GW14z1pcOFVpNhGPtf
 ic3Z9LqZ0zVtasV4B9d1SAhzUCLJI887w7TWmj0X3TBizoVf+IE0HxnTUfE01ylqpxbX4UKuMsY4T
 FCmr9F0uKzBzCHCwATbY6gH8qGiK8JO6i3LFT10WEa0ICUuKmNFzhuSJSyOHaItrFT0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hi6ZwA10nQeVVLVHSSKeYbeNuIjA/FZtJQ9gk2yneq8=; b=UC9B/sOxvbBs3LErxgZ9VWzQnq
 fjXJBWulhumsMbBV40Gn+woa+omBwWotddCt3WwO4DCic4LV3Y4HEMWnNMoWsrTMvtT3kpmaufSjH
 sE5oNR+D9Qbiy1HocBXw98xrEFlREdUov8oENH3p1BvijG1f5ELPztCl9CWEOKz+tNps=;
Received: from mailout.nod.at ([116.203.167.152] helo=lithops.sigma-star.at)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ve8B0-00046r-6O for jfs-discussion@lists.sourceforge.net;
 Fri, 09 Jan 2026 08:48:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id A047A29ABD6;
 Fri,  9 Jan 2026 09:48:46 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id PY1yWc1jnPcz; Fri,  9 Jan 2026 09:48:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id E0C0628F9E9;
 Fri,  9 Jan 2026 09:48:45 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id BZO6SamqYTTM; Fri,  9 Jan 2026 09:48:45 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 30C7B29859D;
 Fri,  9 Jan 2026 09:48:45 +0100 (CET)
Date: Fri, 9 Jan 2026 09:48:45 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <393733638.88534.1767948525135.JavaMail.zimbra@nod.at>
In-Reply-To: <218403128.88322.1767944438487.JavaMail.zimbra@nod.at>
References: <20260108-setlease-6-20-v1-0-ea4dec9b67fa@kernel.org>
 <20260108-setlease-6-20-v1-12-ea4dec9b67fa@kernel.org>
 <218403128.88322.1767944438487.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF146
 (Linux)/8.8.12_GA_3809)
Thread-Topic: add setlease file operation
Thread-Index: Ijb4veyM6wDb0tIeqxd8skdz5qkIYBNsmijj
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ----- Ursprüngliche Mail ----- > Von: "richard" <richard@nod.at>
    >> --- >> fs/jfs/file.c | 2 ++ >> fs/jfs/namei.c | 2 ++ >> 2 files changed,
    4 insertions(+) > > Acked-by: Richard Weinberger <richard@ [...] 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1ve8B0-00046r-6O
Subject: Re: [Jfs-discussion] [PATCH 12/24] jfs: add setlease file operation
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Dave Kleikamp <shaggy@kernel.org>,
 Alexander Aring <alex.aring@gmail.com>, Jan Kara <jack@suse.cz>,
 Paulo Alcantara <pc@manguebit.org>, Sandeep Dhavale <dhavale@google.com>,
 Martin Brandenburg <martin@omnibond.com>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Anders Larsen <al@alarsen.net>, Amir Goldstein <amir73il@gmail.com>,
 jfs-discussion <jfs-discussion@lists.sourceforge.net>,
 linux-unionfs <linux-unionfs@vger.kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chunhai Guo <guochunhai@vivo.com>, Ilya Dryomov <idryomov@gmail.com>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs <linux-xfs@vger.kernel.org>, Xiubo Li <xiubli@redhat.com>,
 Yue Hu <zbestahu@gmail.com>, Miklos Szeredi <miklos@szeredi.hu>,
 samba-technical <samba-technical@lists.samba.org>,
 Mark Fasheh <mark@fasheh.com>, devel <devel@lists.orangefs.org>,
 hughd <hughd@google.com>, Matthew Wilcox <willy@infradead.org>,
 ntfs3 <ntfs3@lists.linux.dev>, Christoph Hellwig <hch@infradead.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, linux-mm <linux-mm@kvack.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>, Gao Xiang <xiang@kernel.org>,
 linux-ext4 <linux-ext4@vger.kernel.org>, Salah Triki <salah.triki@gmail.com>,
 Carlos Maiolino <cem@kernel.org>, Dominique Martinet <asmadeus@codewreck.org>,
 Shyam <sprasad@microsoft.com>, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-cifs <linux-cifs@vger.kernel.org>, Chao Yu <chao@kernel.org>,
 linux-nfs <linux-nfs@vger.kernel.org>, Tom Talpey <tom@talpey.com>,
 ocfs2-devel <ocfs2-devel@lists.linux.dev>,
 Bharath SM <bharathsm@microsoft.com>,
 linux-nilfs <linux-nilfs@vger.kernel.org>, David Sterba <dsterba@suse.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Gruenbacher <agruenba@redhat.com>, Hans de Goede <hansg@kernel.org>,
 gfs2 <gfs2@lists.linux.dev>, Christian Brauner <brauner@kernel.org>,
 linux-f2fs-devel <linux-f2fs-devel@lists.sourceforge.net>,
 tytso <tytso@mit.edu>, Luis de Bethencourt <luisbg@kernel.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-erofs <linux-erofs@lists.ozlabs.org>,
 v9fs <v9fs@lists.linux.dev>, Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Namjae Jeon <linkinjeon@kernel.org>, Steve French <sfrench@samba.org>,
 chuck lever <chuck.lever@oracle.com>, Hongbo Li <lihongbo22@huawei.com>,
 anna <anna@kernel.org>, Jan Kara <jack@suse.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sungjong Seo <sj1557.seo@samsung.com>, David Woodhouse <dwmw2@infradead.org>,
 Trond Myklebust <trondmy@kernel.org>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogInJpY2hhcmQiIDxyaWNoYXJk
QG5vZC5hdD4KPj4gLS0tCj4+IGZzL2pmcy9maWxlLmMgIHwgMiArKwo+PiBmcy9qZnMvbmFtZWku
YyB8IDIgKysKPj4gMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBBY2tlZC1i
eTogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5vZC5hdD4KCldob29wcyEgSSBtZWFudCB0
byByZXBseSB0byB0aGUgamZmczIgcGF0Y2guLi4KClRoYW5rcywKLy9yaWNoYXJkCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
