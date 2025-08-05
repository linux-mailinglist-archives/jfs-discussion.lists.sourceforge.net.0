Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8420AB1B467
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 Aug 2025 15:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qXL8SzjLdi4xtGhKUAPHPetp6jGSnXjo8H4ol530oEU=; b=LL6yAgtpeCAm5NCelHwWO1xPNa
	q80xkTFRn3hc38rA7b1rCstVnUoW5Uz2t5agL7qQhfOIc4wDcwMO20B6oGRtzsEY3+DU40inqxD9+
	3dLMf/RHKx4IsIJvDnMjqlqwnu/RtvBADGM9UsbovZPHTt7rcZJ7+ZFJ550PMjA65BOM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ujHT3-0000EJ-Gc;
	Tue, 05 Aug 2025 13:12:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1ujHT1-0000E6-VT
 for jfs-discussion@lists.sourceforge.net;
 Tue, 05 Aug 2025 13:12:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eVVbmei+vygtwBHQX5Im89QXu8lB8V0+rjTRqxyVrp8=; b=WP0TwA7rhVdMaro6xv1uy6uF23
 /95M/3wHpqlfI++f8YYPkWhTqV91jOKSz1+nmRh2j9pNw+A/lA830U9FVqK2Dul75JxkMOqtRnRD6
 14ZSklYMnW7asEIMP3UEV4frbZJo7QlWrB8lMytCe+QfNezozxBKLO9rqJU/t/A8GAFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eVVbmei+vygtwBHQX5Im89QXu8lB8V0+rjTRqxyVrp8=; b=KS/RUW4p/ljXQA/u9oDOGbHEtF
 PIVP/3GdfZMKrCPiqHZA9A6zEAQUFyGJAHck5mQHMhyjHvJKbDzgUcRNTl9K4PALVC3hfQTGJJels
 6bMNrhqK3h08U3ADUZQ6o9f0RHAGuTkn3CJX0ol1B0KUCs2lxcGFBCvR5TsYoFTY2Jz4=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujHT2-0008Mj-4a for jfs-discussion@lists.sourceforge.net;
 Tue, 05 Aug 2025 13:12:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 86309A5638D;
 Tue,  5 Aug 2025 13:12:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED75CC4CEF4;
 Tue,  5 Aug 2025 13:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754399550;
 bh=aFWkHqBtz2+ILMDSo00KvvPIAklMYgnvlzrKoRBhTTs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t4h773sKMJV/xtbDQZXN1JuW1kVozH8PzBUFMQg0xkCTefOyXfon+8iwXBJttYYyD
 ojr5k/kd3tkMwBYK6378aB24VrDGXtAGy6dA5L36zU+uvUkAIkDpat0w9M/j7WS1RD
 Z392HvnnoDFeuxmnIRI4JDHIhsT3M30GC/rMfTh2XJ6Rm/k0K4LCr2VOFpOzzynAuY
 d1VwMGx9zM2MsSGipRJxKX/mIzoM7G0ciRid4fdaJH3KnvLZgRg9LJm9tFEQ+2lV8D
 AKjgN+G0Qir1MZd1e4BTc/frWjssNEKGVEZynLer3XcxkSzKubOt/GgaZNM8RC1g6y
 7lcsEI4bbOukA==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Tue,  5 Aug 2025 09:09:45 -0400
Message-Id: <20250805130945.471732-70-sashal@kernel.org>
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
 Content preview: From: Arnaud Lecomte <contact@arnaud-lcm.com> [ Upstream
 commit
 c214006856ff52a8ff17ed8da52d50601d54f9ce ] When computing the tree index
 in dbAllocAG, we never check if we are out of bounds realative to the size
 of the stree. This could happen in a scenario where the filesystem metadata
 are corrupted. 
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
X-Headers-End: 1ujHT2-0008Mj-4a
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.16-5.4] jfs: upper bound check of
 tree index in dbAllocAG
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, ghanshyam1898@gmail.com,
 aha310510@gmail.com, eadavis@qq.com, rbrasga@uci.edu, kovalev@altlinux.org,
 Arnaud Lecomte <contact@arnaud-lcm.com>,
 syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com,
 zheng.yu@northwestern.edu, rand.sec96@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Arnaud Lecomte <contact@arnaud-lcm.com>

[ Upstream commit c214006856ff52a8ff17ed8da52d50601d54f9ce ]

When computing the tree index in dbAllocAG, we never check if we are
out of bounds realative to the size of the stree.
This could happen in a scenario where the filesystem metadata are
corrupted.

Reported-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=cffd18309153948f3c3e
Tested-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
Signed-off-by: Arnaud Lecomte <contact@arnaud-lcm.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

**YES**

This commit should be backported to stable kernel trees. Here's my
extensive analysis:

## Security Impact Analysis

This commit fixes a **critical out-of-bounds array access
vulnerability** in the JFS filesystem that can be triggered by corrupted
filesystem metadata. The vulnerability allows reading/writing beyond the
bounds of the `dcp->stree[]` array.

## Specific Code Analysis

1. **The Vulnerability**: In `dbAllocAG()`, the code calculates a tree
   index `ti` at line 1390:
  ```c
  ti = bmp->db_agstart + bmp->db_agwidth * (agno & (agperlev - 1));
  ```
  This calculated value is then used directly to access the `stree`
  array at line 1407:
  ```c
  if (l2nb > dcp->stree[ti])
  ```

2. **Missing Bounds Check**: Before this patch, there was **no
   validation** that `ti` falls within the valid range of the `stree`
   array. The `stree` array has a fixed size of `CTLTREESIZE` (1365
   elements), and `nleafs` field indicates the actual number of valid
   leaves.

3. **The Fix**: The patch adds a critical bounds check (lines
   1392-1396):
  ```c
  if (ti < 0 || ti >= le32_to_cpu(dcp->nleafs)) {
  jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmapctl page\n");
  release_metapage(mp);
  return -EIO;
  }
  ```

## Why This Qualifies for Stable Backport

1. **Security Vulnerability**: This fixes a real security issue reported
   by syzbot that can be triggered by corrupted filesystem metadata,
   potentially leading to:
   - Kernel memory corruption
   - Information disclosure
   - System crashes
   - Potential privilege escalation

2. **Small, Contained Fix**: The patch is minimal (6 lines of code) and
   adds only a defensive bounds check without changing any logic or
   architecture.

3. **Clear Bug Fix**: This is purely a bug fix, not a feature addition
   or architectural change.

4. **No Side Effects**: The fix only adds validation that prevents
   invalid memory access. It doesn't change normal operation paths.

5. **Tested**: The commit indicates it was tested by syzbot, providing
   confidence in the fix.

6. **Follows Stable Rules**:
   - Fixes a real bug that users can hit
   - Minimal change (< 100 lines)
   - Obviously correct
   - Already tested
   - Fixes a security issue

7. **Critical Subsystem**: While JFS is not the most commonly used
   filesystem, it's still in active use, and filesystem corruption
   vulnerabilities are serious security issues that should be fixed in
   all supported kernels.

The vulnerability could be exploited by:
- Mounting a specially crafted JFS filesystem image
- Corrupting JFS metadata through other means
- Potentially through unprivileged mount operations in containers

This is exactly the type of security fix that stable kernels exist to
provide - protecting users from known vulnerabilities without requiring
them to upgrade to newer kernel versions.

 fs/jfs/jfs_dmap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 35e063c9f3a4..5080d59089bd 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1389,6 +1389,12 @@ dbAllocAG(struct bmap * bmp, int agno, s64 nblocks, int l2nb, s64 * results)
 	    (1 << (L2LPERCTL - (bmp->db_agheight << 1))) / bmp->db_agwidth;
 	ti = bmp->db_agstart + bmp->db_agwidth * (agno & (agperlev - 1));
 
+	if (ti < 0 || ti >= le32_to_cpu(dcp->nleafs)) {
+		jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmapctl page\n");
+		release_metapage(mp);
+		return -EIO;
+	}
+
 	/* dmap control page trees fan-out by 4 and a single allocation
 	 * group may be described by 1 or 2 subtrees within the ag level
 	 * dmap control page, depending upon the ag size. examine the ag's
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
