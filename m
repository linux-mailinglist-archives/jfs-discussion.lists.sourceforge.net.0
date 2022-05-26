Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 531F15353FF
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:30:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJB1-0005tJ-JE; Thu, 26 May 2022 19:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAx-0005sk-7N
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QYulGt4krpBmevJpBluzqPg1U+NZrkxxC3VbHwa6WgE=; b=d//22ke0MUcWciCikL5gTuAYeZ
 zD/l0vg5OiiBqMq8VYzplOosAtm6G7H/brbXlNjNUDQBSWa6t7sU5UeCPURXNx1ITTKEKUfKcBGyi
 sXOh9FFd7pW5torHITIZuS5VJ4M6e1xMhhnJQONjscXrut+Ap1W8gh0zCdWfo3cqcmkA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QYulGt4krpBmevJpBluzqPg1U+NZrkxxC3VbHwa6WgE=; b=b
 kTTlSDukzwOVmBRpeQd8js7bZ22/7R5TGHuA32X5QTk+i6YvMbUqa7RClu4meaGvtZz0t5scmozVm
 KxusVkIBJgCyY4E03aUC5WSaNFzTEuL0JF1xVMdUEmwzhuCEpeNZzlvBGq27ObPGlF/hdD2xbrSbl
 uJilQxq69NF8Hz9g=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAq-002uYV-UU
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=QYulGt4krpBmevJpBluzqPg1U+NZrkxxC3VbHwa6WgE=; b=WJUh4ypE6G1Ij5mGH8aq7WLwkv
 vy+qZ7YLhc2oXeneYj+mUEgA0UEJ/RmEg3r/QLSQLREU6796l9uR8n8vW1jaLgfJMHsIrnpMoQ6IL
 gUBtdwBWTqYfrad2emWtYgnV/PoRke9RoqqUkocDtDxAGE2m8ZttrUXjeF/Qh51Ek95uyjX3gIxim
 fiOo5zuUMg4zVAy/1ysrLK6EtY/PPr+ZoZMSqz+xyRQYZhmP7phtSqi/8wpTU5N1nMzlIOcJjCuiE
 Z2lBX7kP2x9+vog+jdPLvq/r9dTEGPwdlI1lzANgzpuH3UJpI8wblQfAtUcwOUrdtfy18icXqWvOh
 y+RkwvAA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAa-001Uu9-Cm; Thu, 26 May 2022 19:29:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:01 +0100
Message-Id: <20220526192910.357055-1-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This patchset does not work. It will eat your filesystem.
 Do not apply. The bug starts to show up with the fourth patch ("Convert
 direct_IO
 write support to use iomap"). generic/013 creates a corrupt filesystem and
 fsck fails to fix it, which shows all kinds of fun places [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nuJAq-002uYV-UU
Subject: [Jfs-discussion] [RFC PATCH 0/9] Convert JFS to use iomap
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "Darrick J . Wong" <djwong@kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This patchset does not work.  It will eat your filesystem.  Do not apply.

The bug starts to show up with the fourth patch ("Convert direct_IO write
support to use iomap").  generic/013 creates a corrupt filesystem and
fsck fails to fix it, which shows all kinds of fun places in xfstests
where we neglect to check that 'mount' actually mounted the filesystem.
set -x or die.

I'm hoping one of the people who knows iomap better than I do can just
point at the bug and say "Duh, it doesn't work like that".

It's safe to say that every patch after patch 6 is untested.  I'm not
convinced that I really tested patch 6 either.

Matthew Wilcox (Oracle) (9):
  IOMAP_DIO_NOSYNC
  jfs: Add jfs_iomap_begin()
  jfs: Convert direct_IO read support to use iomap
  jfs: Convert direct_IO write support to use iomap
  jfs: Remove old direct_IO support
  jfs: Handle bmap with iomap
  jfs: Read quota through the page cache
  jfs: Write quota through the page cache
  jfs: Convert buffered IO paths to iomap

 fs/iomap/direct-io.c  |   3 +-
 fs/jfs/file.c         |  56 +++++++++++++++++-
 fs/jfs/inode.c        | 128 ++++++++++++++++--------------------------
 fs/jfs/jfs_inode.h    |   2 +-
 fs/jfs/jfs_logmgr.c   |   1 -
 fs/jfs/jfs_metapage.c |   1 -
 fs/jfs/super.c        | 127 +++++++++++++++++++----------------------
 include/linux/iomap.h |   6 ++
 8 files changed, 168 insertions(+), 156 deletions(-)

-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
