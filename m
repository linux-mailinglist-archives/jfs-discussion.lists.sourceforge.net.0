Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C723C2FCB
	for <lists+jfs-discussion@lfdr.de>; Sat, 10 Jul 2021 04:32:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1m22nB-0008Rl-Ci; Sat, 10 Jul 2021 02:32:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1m22nA-0008RZ-56
 for jfs-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 02:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=StoILwFQaA5mlMMpf5GPpEeRJcAtEu4EC08DfGAL2oY=; b=XYeBUWkg8G3Lzg2mzJpMI2877x
 IvHNu2/aJycO+rbGMirZEYi+HvvMaIF+g+zV78G3i5EijLNmxyGfVD7KnWfQnOrypthAAXqXTLy6b
 K+dNXjxqENQmGpVPNOoaNXlWBvaULT/VqpaNq5db1o4Yzg96M5K74PIFqbyFCCJ1mJ9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=StoILwFQaA5mlMMpf5GPpEeRJcAtEu4EC08DfGAL2oY=; b=KBuCr6wc+VZxoW88UDG0sbPYez
 wJz9rM/5+EIv61wQzl70UVMG5F8YhO0gY5vEPjDwJ5HOoSrXPg56VpNUdZP/zmtynlt9tmURHXR1c
 CX70faY7ehAjz0y3M0FvRV7xLf8HBf5IjcHsmWeMMLYj9qbm4uiRCGQNWsR3U5HycG7Q=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m22n2-002o5F-Nm
 for jfs-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 02:32:32 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A1F00613D9;
 Sat, 10 Jul 2021 02:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625884339;
 bh=Q1c5JGV5YQnVsTvRoWkgxCNaBmJQ/SpMquTXLSKYiy4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Btva0o9ONgat297BO/cyUOz6TbYo3OallqNgXJ55T6VZV9qvfzDXnuVXK8kLiLhBb
 BlDYo0aMBqhvsBs+dQf5ZQpb/B+hwoRCGA4DBer5gTQo00nvUcnA01U7Z53YMAZetk
 Op6gbcgC8o31qd27uOevNIOuHLjj7CVrAhLbPbZGZycmAYO64cIggu5sRYem1TUCbz
 WCiTPRu6PQ8k53za5NCxM4LMrnHmdXNW5fSoA5e++l+JOaSRtD9EIcyb8SgAjM1G6t
 LLZKfjveZtGKvGe2PFtv+Y4Q2fA8FwZNc7MUFjxv4XjlZIUmPmC8hGTrsrggN4g5S5
 3sXVxu0gdWqzw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri,  9 Jul 2021 22:31:37 -0400
Message-Id: <20210710023204.3171428-12-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710023204.3171428-1-sashal@kernel.org>
References: <20210710023204.3171428-1-sashal@kernel.org>
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
X-Headers-End: 1m22n2-002o5F-Nm
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.19 12/39] fs/jfs: Fix missing
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
index 6b68df395892..356d1fcf7119 100644
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
