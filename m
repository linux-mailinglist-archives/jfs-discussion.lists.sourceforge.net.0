Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C36BD15D3
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 06:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LNCfYdAtGNimxo8hviTbiga3dWwJOUxld/pC+slcsko=; b=LZMP3++qTbq2JOuTrEfFv5ywhs
	jnbwL4LR5//jnkKZ0aHAOETa//HMCOmAN93XpoE0MJu2rwnzasYxT7j8U+cXzMAMg7xDPGwN4VMFS
	L8z8cSiXnfaF9DjGvemgQTdSBWjKWWWVqcLirb5jx/bu44ReQhZ0T/5Z01d0dbCW7w8U=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v89x9-00038L-GG;
	Mon, 13 Oct 2025 04:14:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+429c5dd7f65f3a144064+8086+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1v89x7-00038E-NM for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IHawD8fXUsjzdqrBUJCMerdnKe9dIKJrBNuL1oU4Go8=; b=dIAu0l7XX35vo/cXjeAGDFxDC2
 xOBw+m3jvy4xck+qagh0wawjvpozWebIbzmD6ni/eZ1Zn1C5jtKcfjFt4JXoAxQlZFTvN/J4BWtKB
 u/ZmUtC3e326eoODA9yblByb2IISER9hVvN+vrKFt7Qg28kg9KLtGYi4iSzsqxKZsCPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IHawD8fXUsjzdqrBUJCMerdnKe9dIKJrBNuL1oU4Go8=; b=M
 ycyX84j7jqH40nhLswKgO7GnBGMP6+yD5pgqYkNvp4HMFrYDFsj4SjpPOzUMoIVNxnQAuiBd5UnK8
 7zaQ2EAJojuEE5bwQ5tDDY9KwRDNEbPxPo9oNa9U8zYaVAyMCrjBuTjEaoOypPpyxeubsGGqOejCM
 V06e4XqeKNNkyWgI=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v89x8-00065M-2J for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=IHawD8fXUsjzdqrBUJCMerdnKe9dIKJrBNuL1oU4Go8=; b=yvdjWMe1dksG8iFjNpFAfj1aEe
 A4MWib46wBHcELj51vFEJO1FLURpC0ChP3zWMAbP1jVF8ZtIJeMFGaZBYOfyIb3JZv9EPNHcHyllA
 eYIMXJljTYaRflblHSUsTsymqH6ITRsIA/qMfc+J4kwlkTl+8MWSWMuqKQF/uNtPh3pLBGTwqZSok
 iRlxAmYhIXlHBc01mgkwf4erW9kt2zjKSasJn4hFaFiEOON7+nvcIDjaSpR6Y3/O6qKbpANIlYJA1
 0qjIoWDwM9gAzWid8AygMqkE3HXcdV4HfOjr1wWfM1JqnEXNDAb0WBnodQObMz4C9QP0qa6KSqWd6
 x8Pmt9ew==;
Received: from [220.85.59.196] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1v88lL-0000000C862-27OS; Mon, 13 Oct 2025 02:58:16 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Mon, 13 Oct 2025 11:57:55 +0900
Message-ID: <20251013025808.4111128-1-hch@lst.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, while looking at the filemap writeback code, I think
 adding filemap_fdatawrite_wbc ended up being a mistake, as all but the original
 btrfs caller should be using better high level interfaces instead. [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1v89x8-00065M-2J
Subject: [Jfs-discussion] filemap_* writeback interface cleanups
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@lst.de>
Cc: linux-xfs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org, v9fs@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi all,

while looking at the filemap writeback code, I think adding
filemap_fdatawrite_wbc ended up being a mistake, as all but the original
btrfs caller should be using better high level interfaces instead.  This
series removes all these, switches btrfs to a more specific interfaces
and also cleans up another too low-level interface.  With this the
writeback_control that is passed to the writeback code is only
initialized in three places, although there are a lot more places in
file system code that never reach the common writeback code.

Diffstat:
 block/bdev.c            |    2 
 fs/9p/vfs_file.c        |   17 +------
 fs/btrfs/defrag.c       |    4 -
 fs/btrfs/extent_io.c    |    3 -
 fs/btrfs/file.c         |    2 
 fs/btrfs/inode.c        |   52 +++++++---------------
 fs/btrfs/reflink.c      |    2 
 fs/btrfs/super.c        |    2 
 fs/ext4/inline.c        |    2 
 fs/ext4/inode.c         |    6 +-
 fs/fat/inode.c          |    2 
 fs/fs-writeback.c       |    6 +-
 fs/jfs/jfs_logmgr.c     |    2 
 fs/ocfs2/journal.c      |   11 ----
 fs/sync.c               |   11 ++--
 fs/xfs/xfs_file.c       |    2 
 include/linux/pagemap.h |    8 +--
 mm/fadvise.c            |    3 -
 mm/filemap.c            |  109 +++++++++++++++++++-----------------------------
 mm/khugepaged.c         |    2 
 20 files changed, 95 insertions(+), 153 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
