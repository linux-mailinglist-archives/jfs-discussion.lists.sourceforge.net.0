Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA946C04EE5
	for <lists+jfs-discussion@lfdr.de>; Fri, 24 Oct 2025 10:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RhqtboXA74M31qw+dsIkfEsAdjNcW6+QnhOalw3zXjU=; b=cXUR2XRB9SsWTzKM11h3ytksgO
	p1J/Yo94tZrpL84XycTrRyGO3OLGuGlFYn5zuppHx20m6aoTtpF5Z8hDNiNsHX/aBnf0FDXXcJOzv
	mMVE75q5gzJ18U3fyBCuG7+blX3AdF1lIBZfvEh4ohDMPhpyRmMxQHFne3glgc/7ByUs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCCnF-0007qw-VO;
	Fri, 24 Oct 2025 08:05:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+aa390122061dbb70398c+8097+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1vCCnD-0007pR-MB for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:05:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NA1EuLVhaXagkNkbEp2XlJIvkVm/6B2UHwg0o62JmEg=; b=kewy5sXKY5IG1It6fLOGHvvtfq
 AQbqJ+5SvF/mWnUH+1s01gw6vtbGNireH6Ag1Lxqvp3Q8HxkvS85UnG+kJv/6gLjfzjVWRuKH9IqH
 bAKKIKN6Q616p7ESfFtV80lG6Zovr1Qe0kQpKdxBNLrEKWN7z1ZFE5dcXzDWMMl33XHs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NA1EuLVhaXagkNkbEp2XlJIvkVm/6B2UHwg0o62JmEg=; b=K
 91xKnStsJe0zf64PB2kFq2z56QZ8OAM/0fzfxI22QE93CF8RVfYr82DJiADryPgwE7xug0m6NBODQ
 KtpYzfKiUe166aed8WzBb+AWL8Yvg3us+1Gc6CvEGesi69SpRoHZ6YZCfG9GzjwOFs0XXe212CL+b
 ApIWGXgGeuPrapUQ=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCCnD-0004Pm-Ay for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=NA1EuLVhaXagkNkbEp2XlJIvkVm/6B2UHwg0o62JmEg=; b=EFyFm+F20P3IJnCg0fyoCLJwx/
 iUjafVa3MnQpYacpmfc4FhY83ukGNrsi+RejEgHj/fS1IEVKt+ePz8CTV35hZRQCamiNAgvqGDamH
 G/bB0vfKuOOTJboHNrKU8b2hjoo58Z8uBGyWcaRUUcJPc6WmWp8CKv+P1pfXUE9fZi1StqiPTEl1q
 HIslYqKlVG2K5+5Q8OZdMGqwzwFPLr09kDx/GxHA5L8tPfeHjHs4BUFM+7cn6uFZmPAfxxCXlQRJS
 784JSAnaI4lZd+Lz3VWOA9xf4bhqJXX+qM2lSiyLuhgSCRV3wEGvfowG3PsaZ5zzdMVd0nrjtN4P0
 U8Bfua3w==;
Received: from
 2a02-8389-2341-5b80-d601-7564-c2e0-491c.cable.dynamic.v6.surfer.at
 ([2a02:8389:2341:5b80:d601:7564:c2e0:491c] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1vCCmu-00000008c2I-1Fku; Fri, 24 Oct 2025 08:04:40 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Fri, 24 Oct 2025 10:04:11 +0200
Message-ID: <20251024080431.324236-1-hch@lst.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vCCnD-0004Pm-Ay
Subject: [Jfs-discussion] filemap_* writeback interface cleanups v2
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

Changes since v1:
 - use LLONG_MAX instead of LONG_MAX in one place
 - two commit message typo fixes
 - keep the filemap_flush* naming

Diffstat:
 fs/9p/vfs_file.c        |   17 +------
 fs/btrfs/inode.c        |   46 ++++++--------------
 fs/fs-writeback.c       |    6 +-
 fs/ocfs2/journal.c      |   11 ----
 fs/sync.c               |   10 +---
 include/linux/fs.h      |    6 +-
 include/linux/pagemap.h |    5 --
 mm/fadvise.c            |    3 -
 mm/filemap.c            |  109 +++++++++++++++++++-----------------------------
 9 files changed, 76 insertions(+), 137 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
