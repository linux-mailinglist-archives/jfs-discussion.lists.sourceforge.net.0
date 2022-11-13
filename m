Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 072326271D8
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Nov 2022 19:59:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouIBj-0003ci-NK;
	Sun, 13 Nov 2022 18:58:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+5e9d9a7f9455f7bb8c66+7021+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ouIBh-0003cY-Kv; Sun, 13 Nov 2022 18:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zKYZfMyRptVHjTpWXdCQLIfvx+VJVihqG6A2BfSKUdg=; b=ikB+l4iM8De+W6xjNtcwk2gYFd
 ugTukq0QXrjxdE42z+a2lMWoi7xBqxbhE/2eHT9stv/La3Vbimtr4RrqbpomJWKV2JzkTTQ9G1mwa
 g1bZ/ikDqiy6PQvEVQ/0a6pC13pIZ7ZHRdnW2hWeD/APXmFjuKARopAmZHHYT2yjltRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zKYZfMyRptVHjTpWXdCQLIfvx+VJVihqG6A2BfSKUdg=; b=a
 31EiautC8HCyvQKY9/jBtZJIgXqDa6dQfaeiQNUEjrIZVE60Z+OC5gZJpCLDfdRpEkHeIkBG6q1zV
 JX/35epdqy0bT274QCRhodHVd/MwQM8cCtfOFiJGhSNAJsIFZBp82Y6ifOpaZmDYRPsCKXutjNxUS
 qdkdvhYDw4+2JPfc=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouIBh-000196-5K; Sun, 13 Nov 2022 18:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=zKYZfMyRptVHjTpWXdCQLIfvx+VJVihqG6A2BfSKUdg=; b=0zXulfsEPc9RMtLp8EmKdJiQeb
 R8G58ym2IKT0jPNx1fxDKWYvH0ideWHOt0wHALqprjbXdz7Dng6j+TD/edz4FZ3E0n/J1w+I4hpJ/
 l0utj3nBAKgcpNDB6VaKBHif7XHXlJyWOQUWY8wwptTonLf3bwr97FcL0KNwJrqglj21dyoH1Fcp3
 xDfGLZg4m4IC0LgzVU++0tL7TqWSBuHsL5NuHvNnVr2Ir/KFCWfak8ym8c5plD87O3HRCQTDtJLWP
 kzhL5CCMZX5SM8glBsMFh55uIChxNpWTs6jgW50N8S9eUvT9s4871eBgOdkemmASLmsb6HugHQCRA
 IG/Tvo9Q==;
Received: from 213-225-8-167.nat.highway.a1.net ([213.225.8.167]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ouFr0-00CJlr-11; Sun, 13 Nov 2022 16:29:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Sun, 13 Nov 2022 17:28:53 +0100
Message-Id: <20221113162902.883850-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, The VM doesn't need or want ->writepage for writeback
 and is fine with just having ->writepages as long as ->migrate_folio is
 implemented.
 This series removes all ->writepage instances that use block_write_full_page
 directly and also have a plain mpage_writepages based ->writepages. 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ouIBh-000196-5K
Subject: [Jfs-discussion] start removing writepage instances
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
Cc: linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
 jfs-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi all,

The VM doesn't need or want ->writepage for writeback and is fine with
just having ->writepages as long as ->migrate_folio is implemented.

This series removes all ->writepage instances that use
block_write_full_page directly and also have a plain mpage_writepages
based ->writepages.

Diffstat:
 fs/exfat/inode.c   |    9 ++-------
 fs/ext2/inode.c    |    6 ------
 fs/fat/inode.c     |    9 ++-------
 fs/hfs/inode.c     |    2 +-
 fs/hfsplus/inode.c |    2 +-
 fs/hpfs/file.c     |    9 ++-------
 fs/jfs/inode.c     |    7 +------
 fs/omfs/file.c     |    7 +------
 fs/udf/inode.c     |    7 +------
 9 files changed, 11 insertions(+), 47 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
