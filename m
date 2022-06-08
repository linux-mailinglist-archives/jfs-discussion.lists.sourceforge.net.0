Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AE6543603
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 Jun 2022 17:05:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nyxFE-0006NM-Ol; Wed, 08 Jun 2022 15:05:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+ba9ae8ab3d8ecaf97ba4+6863+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nyxFD-0006ND-24
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rgqoGQEPuGySXdQMGxM8jwQfjueapzW0nSo9VnuwjIc=; b=jhIOX06BkC5AwKu27qSPbmhs1y
 8KmektylCxV7M8XbVr+x5edfJ79fMdtlLwR6PENfVAvbV9NAW5SlEnY6gPqbAGZ6LYEs2s33+JPtP
 4hNFBxArpZ6U90XrAtiGqj72m1VbjtYmjQCom0l65aVfK4oMA54IbQcg64CCAzPUWLHM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rgqoGQEPuGySXdQMGxM8jwQfjueapzW0nSo9VnuwjIc=; b=h
 EHG7o+Bk0EHVEfuD8rR2GPZgGskQ/FW3/+dT5JYlWNFZajKbfPBEAtZDYyvF1sUcJ1CMEdimgCGjL
 Ysx1TU6eysK5MrHBDKXbZLScVRMo1W+k5d2tmsJRrNwk5qXnYcpvfgSrhWhMyi0CixI+c7xH/LAcM
 jgW0At/nQiVaWWiE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyxF9-009y6Q-TS
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=rgqoGQEPuGySXdQMGxM8jwQfjueapzW0nSo9VnuwjIc=; b=abPFe16yTSqRoZ8mtpEcykWTsp
 gC7b3qW+iZYlBBV0Z4nLU+1qVb+u9n9uLU07M00D0/tvJH40ZtXGoJY99/0KA8TZNDwzvicV6zE75
 L2/hLKARFAk0JKGmYbhmADfZF/k5UpwwqiZiI6MW+VDlRcupg4mi2YzenuzZ2es/YRSfoaTLVEdYf
 n+C0YowC3ziOx2BsDsTSHjxz7542GDmOcf1Gy8Oz4xMRTHW8Jsb99szyuLGfz97A2EyX0H3b5GPeQ
 FE6QTbLmAPPn4HRN/F4OVG/jPpctv96fhoM7yt5LTp8e45VxHBuR5k8zGDthyyULiHX62GbvhgY9/
 i8JEu6wg==;
Received: from [2001:4bb8:190:726c:66c4:f635:4b37:bdda] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nyxEs-00DtE0-4T; Wed, 08 Jun 2022 15:04:54 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ext4@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Date: Wed,  8 Jun 2022 17:04:46 +0200
Message-Id: <20220608150451.1432388-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, this series (against the pagecache for-next branch)
 removes the nobh helpers which are a variant of the "normal" buffer head
 helpers with special tradeoffs for machines with a lot of highmem, and thus
 [...] Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1nyxF9-009y6Q-TS
Subject: [Jfs-discussion] remove the nobh helpers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi all,

this series (against the pagecache for-next branch) removes the nobh
helpers which are a variant of the "normal" buffer head helpers with
special tradeoffs for machines with a lot of highmem, and thus rather
obsolete.  They pass xfstests, or in case of jfs at least get as far
as the baseline.

This might not be as nice as an actual iomap conversion, but already
removes some hairy code in the way of removing ->writepage.

Diffstat:
 Documentation/filesystems/ext2.rst |    2 
 fs/buffer.c                        |  324 -------------------------------------
 fs/ext2/ext2.h                     |    1 
 fs/ext2/inode.c                    |   51 -----
 fs/ext2/namei.c                    |   10 -
 fs/ext2/super.c                    |    6 
 fs/jfs/inode.c                     |   18 +-
 fs/mpage.c                         |   47 -----
 include/linux/buffer_head.h        |    8 
 include/linux/mpage.h              |    2 
 10 files changed, 29 insertions(+), 440 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
