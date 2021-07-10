Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2073C2FDE
	for <lists+jfs-discussion@lfdr.de>; Sat, 10 Jul 2021 04:35:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1m22qJ-0000VB-Ue; Sat, 10 Jul 2021 02:35:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1m22qI-0000Uw-Aq
 for jfs-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 02:35:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qKhDsoYPci5vwxkBLQMco+lajHrrpYmv5ntr1W5FbSM=; b=fYK8mGJRcXMDOrjp6pX3o946Xz
 YCKNhQOnaTrvUwPoYd2TDWzuUSfDMN0BzGe2fFjRQ0VkYojGabp1zBSC57I5R0GPhgTHFanP4k111
 r9/beDBG8pQm4qdoygImA5+iWnPVjT3I9N1QzJwqZPONX7vm7lDfbyQ6i37nGX4J4UCk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qKhDsoYPci5vwxkBLQMco+lajHrrpYmv5ntr1W5FbSM=; b=fhhFriKjAVvk2yNtFZ9Ol/2iCa
 54iA+RLUQgfireT6le7iFVRqBxZ7Cmybr35s8PoD0k0tX/pDJcQ7KJ+PLmgFsr/sUdk/mJ2HaP3ns
 vNH/BSYxFqtehgzSDwpCDbXil+cQ7jYYdPyyHtXMwQAJXJN2JBbn0zlDOLBmG1ytogtw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m22q6-0005R2-18
 for jfs-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 02:35:46 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D70ED613DC;
 Sat, 10 Jul 2021 02:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625884528;
 bh=AxcRIq/z8eifYW10F8v9/RyGoCJ5kpcBD/0zKisuXcE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LbMafLH8Ze+UNIxpWKlGkvHOcVa651o2uWoQQsX/jXI2V079+K6vZVi8EnwTZrIon
 DiJHQCjvefrXI61dOoafytypOsr6huYQVWwtcBdqrHva76O/zvXw1tYA8wbz1sZYUU
 i+vo1JEFvUhlREBb0w1b14yQZnx+NXr2iUzYrAZJQNwWc0qaNuFAhbNBkEt4XQw8sb
 xP1d/SNdCQty0weu6C7+W1M5dxJcd+gHFL7wEeSfriIvzEihhfm00Mh8J6JEHa80po
 /mGXU7m1Bm0bGX6ojtWwjDRS83KcPqXTKUCaIAMtfYeF1xSeMQFAve1VcOe0odRUAL
 l2XquAQBwr2FQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri,  9 Jul 2021 22:34:52 -0400
Message-Id: <20210710023516.3172075-10-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710023516.3172075-1-sashal@kernel.org>
References: <20210710023516.3172075-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m22q6-0005R2-18
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.14 10/33] fs/jfs: Fix missing
 error code in lmLogInit()
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
Cc: Sasha Levin <sashal@kernel.org>,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 jfs-discussion@lists.sourceforge.net, Abaci Robot <abaci@linux.alibaba.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

[ Upstream commit 492109333c29e1bb16d8732e1d597b02e8e0bf2e ]

The error code is missing in this code scenario, add the error code
'-EINVAL' to the return value 'rc.

Eliminate the follow smatch warning:

fs/jfs/jfs_logmgr.c:1327 lmLogInit() warn: missing error code 'rc'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_logmgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 0e5d412c0b01..794c2acb6822 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1338,6 +1338,7 @@ int lmLogInit(struct jfs_log * log)
 		} else {
 			if (memcmp(logsuper->uuid, log->uuid, 16)) {
 				jfs_warn("wrong uuid on JFS log device");
+				rc = -EINVAL;
 				goto errout20;
 			}
 			log->size = le32_to_cpu(logsuper->size);
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
