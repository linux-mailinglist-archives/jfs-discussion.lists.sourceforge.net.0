Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 669BEB1B464
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 Aug 2025 15:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=42Mg9d/dCZM4F79p5vtFuVGea6LevL6N3+0gtGlR9Es=; b=WRvR2I3wjPZitP4hIDp7BBRg5+
	TSPDvVfkjjB4JojtcBxpAP/zV29vvzwEjjewrOucwR10+DC+O/H25t5V8J8RgUu8jcEwGnNQXRu+S
	tTa3JZqmv34QvDNadU9xQ9cXV0KdUiIP1gt0aePBpAt2YF/5+qKGdyDpFLVWv+HB6wlM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ujHT4-00084b-O7;
	Tue, 05 Aug 2025 13:12:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1ujHT4-00084V-6A
 for jfs-discussion@lists.sourceforge.net;
 Tue, 05 Aug 2025 13:12:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0ttS7q+5nPLyh52+uIFQQJu3Jtr5E01KxtNzKa3JYHc=; b=LZD00uOkoqnKBJ43ftDMVtRG7d
 onYfmzcrV+fQg1GmcS/MODMqBOrHeehmFxw7gfgYA2AA9XuM9hVg5wOTnltbtDW7HWxQQ/KRXqiBC
 NOuQ7k5050ySUu0GsiXm1mCGc7CC6R78y17bBuyztXvUQ1jz6Za69Z93tLBFQA6Ocqo8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0ttS7q+5nPLyh52+uIFQQJu3Jtr5E01KxtNzKa3JYHc=; b=ejQ4ieIA2s2RDJfzJDxyvOXLmL
 vOywR9kREmixp4dZUb1DI/PdoxzdFMAYB6XrEBameW6qTr+QdYAbSYbkrNhNTlJ3/HwKOQS+P2Lto
 S6dhnxT6tUo6QjF56OXXf2GgihoG81yx2kQB5rDrn5wB+5aERHgvIGXdrzbhm6hG83Rg=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujHT3-0008Ms-Ja for jfs-discussion@lists.sourceforge.net;
 Tue, 05 Aug 2025 13:12:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D737E60203;
 Tue,  5 Aug 2025 13:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE950C4CEF4;
 Tue,  5 Aug 2025 13:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754399546;
 bh=AMs5KUwbQVdPQ9vqFQRkUMqWPoaPmMwK2Vq/nT4s15k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MzwUOG1BMm44BLnFZ1LIX9P7KjtZEaEEXeQ5fVjc7FoHv1abV+d1s0W20dvRdTxTP
 Z9zwATB7EdOifT1vuLVNXwS7hK7BeegXe5R4PWR/J3//wy/2f2mqyR7mYqqfQ0ErqM
 ZuhSAOapxBcW7F4S7EJeq0an6fEpo8/39JWl9UR40wNIc0XqKlAhbrIszTd1q+Mh5k
 gXNtqVJUJkyl5RxaT8Wpw8gQSGl+Nh21en4m4OLLQIFSdLGET4HCZ3U0W5y5T0d7Dx
 dOoCVnFbiuEvOGsL6U2Ajyjh955pOjOE/G65kf8OrFOrbhxovsrAhJxuOt38HjA2qG
 jGxwd+nsEUfCQ==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Tue,  5 Aug 2025 09:09:44 -0400
Message-Id: <20250805130945.471732-69-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805130945.471732-1-sashal@kernel.org>
References: <20250805130945.471732-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.16
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Edward Adam Davis <eadavis@qq.com> [ Upstream commit
 2d04df8116426b6c7b9f8b9b371250f666a2a2fb ] The reproducer builds a corrupted
 file on disk with a negative i_size value. Add a check when opening this
 file to avoid subsequent operation failures. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ujHT3-0008Ms-Ja
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.16-5.4] jfs: Regular file
 corruption check
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
 jack@suse.cz, lorenzo.stoakes@oracle.com, Edward Adam Davis <eadavis@qq.com>,
 jfs-discussion@lists.sourceforge.net,
 syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com, Slava.Dubeyko@ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Edward Adam Davis <eadavis@qq.com>

[ Upstream commit 2d04df8116426b6c7b9f8b9b371250f666a2a2fb ]

The reproducer builds a corrupted file on disk with a negative i_size value.
Add a check when opening this file to avoid subsequent operation failures.

Reported-by: syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=630f6d40b3ccabc8e96e
Tested-by: syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

**YES**

This commit should be backported to stable kernel trees for the
following reasons:

## Bug Fix Nature
The commit fixes a **data corruption vulnerability** where a corrupted
JFS filesystem can have regular files with negative `i_size` values.
This is clearly a bug that affects users, as evidenced by:
- The syzbot report indicating this was found through fuzzing
- The potential for subsequent operation failures when accessing such
  corrupted files

## Security and Stability Impact
1. **Prevents kernel crashes/errors**: Without this check, opening a
   file with negative `i_size` can lead to subsequent operation failures
   and potentially undefined behavior when the negative size is used in
   calculations (line 63 checks `inode->i_size == 0`)

2. **Similar to other filesystem protections**: The analysis shows EROFS
   has a similar check (fs/erofs/inode.c:134-137) that returns
   `-EFSCORRUPTED` for negative i_size, indicating this is a recognized
   filesystem corruption pattern that needs protection

## Minimal and Contained Fix
The fix is:
- **Only 3 lines of code** - extremely minimal change
- **Early validation** at file open time - prevents issues before they
  cascade
- **No architectural changes** - just adds a simple validation check
- **No new features** - purely defensive programming
- **Confined to JFS subsystem** - doesn't affect other kernel components

## Low Risk of Regression
- The check only triggers for already-corrupted filesystems (negative
  i_size is never valid for regular files)
- Returns standard `-EIO` error that applications already handle
- Placed before any other operations, minimizing interaction with
  existing code
- Tests confirm the fix works (Tested-by tag from syzbot)

## Stable Tree Criteria Met
This perfectly fits the stable kernel rules:
- Fixes a real bug (filesystem corruption handling)
- Minimal change (3 lines)
- Obviously correct (negative file sizes are invalid)
- Already tested
- No new functionality

The commit prevents potential kernel instability, data corruption
issues, or security vulnerabilities when dealing with corrupted JFS
filesystems, making it an ideal candidate for stable backporting.

 fs/jfs/file.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/file.c b/fs/jfs/file.c
index 01b6912e60f8..742cadd1f37e 100644
--- a/fs/jfs/file.c
+++ b/fs/jfs/file.c
@@ -44,6 +44,9 @@ static int jfs_open(struct inode *inode, struct file *file)
 {
 	int rc;
 
+	if (S_ISREG(inode->i_mode) && inode->i_size < 0)
+		return -EIO;
+
 	if ((rc = dquot_file_open(inode, file)))
 		return rc;
 
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
