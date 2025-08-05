Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CDAB1B459
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 Aug 2025 15:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6/Cc3fgitru4uKx325B4vrRYFBTYpJFQtv2WBn+TFYM=; b=GmAfXVRz183d2yovRczrRWOTf0
	A9b/lIKKmn9gj5a6IrB4ddoJrXNpWkP/jeL/U7cIbbkFz3X7AQVikz01mOZBGvpbkO0AXqynnzquz
	1bQhJGsYM7DcXvD3dHKmPdXdxjhOfGpqGxJvWujga1C8p6hUkLc7PMfk4CSZiHze6HPk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ujHSJ-0001Aw-8k;
	Tue, 05 Aug 2025 13:11:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1ujHSH-0001Ap-Eh
 for jfs-discussion@lists.sourceforge.net;
 Tue, 05 Aug 2025 13:11:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XTnfknCg5QpL1IZQZdSVRrDvHNKbVYucqK+GRpJ2Lao=; b=CBqsjgg8Raz+aZOcFvjgSjWmW1
 aEzxoCuTDSz4H9Zg9N8ptP/mgMEImabUHYXLKh6b6/1MC5rwFiwq9FWx/XX/gA8r42RGc6snVYxXc
 Gt//Pj9IVsj36bt1CbHEa1+n3iS/DnRBlXagd2AgGJuN0gf1vZIoiW8ipPWUn4Q9aMGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XTnfknCg5QpL1IZQZdSVRrDvHNKbVYucqK+GRpJ2Lao=; b=TMtAuBS6ifSIw2I2Jx/mEubH7K
 qMAFzorNVcEpWZjduLGxTy9kWKdErD5DfzGW95cIFG/g0Y24yENUhAnwicAmhQ1A2j/JnjCMvi5HS
 gCpEOYlBvqqyLlZ0Pxw2HJRnu/CdaDVrwpoOZ4CHsRWtHN6pt3mpRT/bElWLH9q2dqd4=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujHSG-0008JQ-Ru for jfs-discussion@lists.sourceforge.net;
 Tue, 05 Aug 2025 13:11:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 35644A5638A;
 Tue,  5 Aug 2025 13:11:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E23FFC4CEF0;
 Tue,  5 Aug 2025 13:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754399497;
 bh=29x8TnAnP+R3c6a0dRVh3yLd0srO63UnLQAfwhxj40k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FIRW/zlRhtZQXXBHAljGSC1adcoSFAOADxJcTeA3Tr3iy13M5D+X0XVWUgHugKSiG
 IIJm5xGXFp6MglyqAPTolXI+DTu4dQYm6/jE7zHShI9L0ckksfYAo6v3nvOuj3i2QJ
 w68gp+3/4IY9EZGc10ida8Bv+RtDPSx9aUXdAKMHWuddi3F+OEO/ZKKQ0YtljjD9Yz
 4NCrXdJc4NNdEPzb3sUIkdIXiF9yOLR8of6LR0Ap2g7ya6vIJfCdn+ceH34YFwZ6wI
 WhjbwxnNRZsLmYUEIg9lYSmDsLR9vNMMRuFhAY157JS5Yg4Q3JxMq3UxnuMU5LzJsT
 J3FV4sHU3RlpA==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Tue,  5 Aug 2025 09:09:25 -0400
Message-Id: <20250805130945.471732-50-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805130945.471732-1-sashal@kernel.org>
References: <20250805130945.471732-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.16
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Lizhi Xu <lizhi.xu@windriver.com> [ Upstream commit
 2d91b3765cd05016335cd5df5e5c6a29708ec058 ] The fileset value of the inode
 copy from the disk by the reproducer is AGGR_RESERVED_I. When executing evict, 
 its hard link number is 0, so its inode pages are not truncated. This causes
 the bugon to [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ujHSG-0008JQ-Ru
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.16-5.4] jfs: truncate good inode
 pages when hard link is 0
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
From: Sasha Levin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org, brauner@kernel.org,
 chentaotao@didiglobal.com,
 syzbot+6e516bb515d93230bc7b@syzkaller.appspotmail.com, josef@toxicpanda.com,
 willy@infradead.org, Lizhi Xu <lizhi.xu@windriver.com>, kovalev@altlinux.org,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Lizhi Xu <lizhi.xu@windriver.com>

[ Upstream commit 2d91b3765cd05016335cd5df5e5c6a29708ec058 ]

The fileset value of the inode copy from the disk by the reproducer is
AGGR_RESERVED_I. When executing evict, its hard link number is 0, so its
inode pages are not truncated. This causes the bugon to be triggered when
executing clear_inode() because nrpages is greater than 0.

Reported-by: syzbot+6e516bb515d93230bc7b@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=6e516bb515d93230bc7b
Signed-off-by: Lizhi Xu <lizhi.xu@windriver.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

**Backport Status: YES**

This commit should be backported to stable kernel trees based on the
following extensive analysis:

## Critical Bug Fix Nature

This commit fixes a kernel BUG_ON() crash that can be triggered in
production systems. Looking at the code changes and commit message:

1. **The Bug**: When JFS evicts an inode with `fileset ==
   AGGR_RESERVED_I` and hard link count of 0, the inode pages were not
   being truncated. This leads to a BUG_ON() trigger in `clear_inode()`
   at fs/inode.c when checking `BUG_ON(inode->i_data.nrpages)`.

2. **Root Cause**: The original code only called
   `truncate_inode_pages_final()` for inodes with `fileset ==
   FILESYSTEM_I`, missing other fileset types like `AGGR_RESERVED_I`.
   This left pages in memory when they should have been freed.

## Fix Characteristics

The fix is ideal for stable backporting:

1. **Minimal and Contained**: The change is just moving one line of code
   - `truncate_inode_pages_final(&inode->i_data)` is moved outside the
   `if (JFS_IP(inode)->fileset == FILESYSTEM_I)` condition block,
   ensuring it runs for ALL inodes with 0 hard links, not just
   FILESYSTEM_I inodes.

2. **Low Risk**: The change ensures proper cleanup for all inode types
   during eviction, which is the expected behavior. The function
   `truncate_inode_pages_final()` is safe to call for any inode being
   evicted with no links.

3. **Clear Bug Report**: This fixes a syzbot-reported crash with a
   reproducible test case
   (syzbot+6e516bb515d93230bc7b@syzkaller.appspotmail.com).

## Impact Analysis

- **User Impact**: Without this fix, users can experience kernel
  panics/crashes when specific JFS inode conditions occur
- **Security**: Prevents potential denial-of-service through triggerable
  BUG_ON()
- **Regression Risk**: Minimal - the change ensures proper cleanup that
  should have been happening all along

## Historical Context

Looking at related commits:
- Similar eviction-related fixes have been backported (e.g.,
  e0e1958f4c36 "jfs: fix uaf in jfs_evict_inode")
- JFS has had multiple stability fixes in the eviction path that were
  deemed stable-worthy
- The subsystem maintainer (Dave Kleikamp) signed off on this fix

The commit clearly meets stable kernel criteria: it fixes a real bug
that causes system crashes, the fix is minimal and correct, and there's
no risk of introducing new features or architectural changes.

 fs/jfs/inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 60fc92dee24d..81e6b18e81e1 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -145,9 +145,9 @@ void jfs_evict_inode(struct inode *inode)
 	if (!inode->i_nlink && !is_bad_inode(inode)) {
 		dquot_initialize(inode);
 
+		truncate_inode_pages_final(&inode->i_data);
 		if (JFS_IP(inode)->fileset == FILESYSTEM_I) {
 			struct inode *ipimap = JFS_SBI(inode->i_sb)->ipimap;
-			truncate_inode_pages_final(&inode->i_data);
 
 			if (test_cflag(COMMIT_Freewmap, inode))
 				jfs_free_zero_link(inode);
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
