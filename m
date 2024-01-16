Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1A082E503
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:28:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXJj-0002uf-81;
	Tue, 16 Jan 2024 00:28:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXJg-0002uY-VP
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:28:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fFWv88RpH3idZJt222U+ookYp81Oz1ooMNo0Qf8k7qo=; b=h5MXvrE64aky3V/WjS9T5ZgLVl
 FhsEZljVl+4Q23zEUqE90Ll1lCyuVCKsHZkH/oODXFWgd+8+UpCVgvHCiHUF8ijS5a0DLyKYTnZQY
 tL+NUjd9lNez8NBMYV2u8vzBxzj2Go6pV2lfJiWkOf7E0u8Ps5B4kRjYlynR1PzPHPRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fFWv88RpH3idZJt222U+ookYp81Oz1ooMNo0Qf8k7qo=; b=SV/OW0EUiICv3snX2r+OAbXVJK
 tsxH4vQc3u8VriuKxnOnB7anNg1Y1YJ3aNeLhVONTjKC/AtJ55AFWwSyslPKd5sroe7GjHcfTeaW+
 6DwiXI01JzcLJl6OXTmphVCP4VMWIbGtd/fyr+FHy959ohMWqxQFnC+N4kRexPhrMyww=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXJf-000390-I0 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:28:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id F1F05B80D3E;
 Tue, 16 Jan 2024 00:28:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ED5CC433F1;
 Tue, 16 Jan 2024 00:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364905;
 bh=PFH+Lud/PEakPIMTlN51NJpUc9da4QgaFTyXDTDIfd8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BRABseb5t0YUQSGZ3OUhmFTvWZ7H6FZXxfZAHNcUGq37ZwnHrFoW3d9CPIMT9dKUD
 L7SL99PGMOQF1VX4o4VZSUxoKbCEAzOQNZ1YJhY8QC1a6lvDomhegNC+7ZfPrH+lj9
 B4AfN0HLY9/k4msXYpZofK04N0F3clT+N224Sj0VAnKAZTyKxebBoR/JhAn4lU5dn7
 ScZeDLCG5CLrBXxlWo0pDOJwsUUK2N6Xqt/0vt03/cbqM/pqYgCFw6016HlXUYbgs9
 c1GlbVzeqZAuEgHFKIkCmzZ7c0iam9UHd6ixX9pTs3vL6+YXjMiSDcKXau64/73O45
 A69btPOBkIHNg==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:27:56 -0500
Message-ID: <20240116002817.216837-3-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116002817.216837-1-sashal@kernel.org>
References: <20240116002817.216837-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.305
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Manas Ghandat <ghandatmanas@gmail.com> [ Upstream
 commit
 fa5492ee89463a7590a1449358002ff7ef63529f ] Currently while searching for
 current page in the sorted entry table of the page there is a out of bound
 access. Added a bound check to fix the error. 
 Content analysis details:   (-4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPXJf-000390-I0
Subject: [Jfs-discussion] [PATCH AUTOSEL 4.19 03/12] jfs: fix
 slab-out-of-bounds Read in dtSearch
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
 jfs-discussion@lists.sourceforge.net, Manas Ghandat <ghandatmanas@gmail.com>,
 kernel test robot <lkp@intel.com>, osmtendev@gmail.com,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Manas Ghandat <ghandatmanas@gmail.com>

[ Upstream commit fa5492ee89463a7590a1449358002ff7ef63529f ]

Currently while searching for current page in the sorted entry table
of the page there is a out of bound access. Added a bound check to fix
the error.

Dave:
Set return code to -EIO

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/r/202310241724.Ed02yUz9-lkp@intel.com/
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dtree.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 320c9f42b65b..ea2c8f0fe832 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -646,6 +646,11 @@ int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
 		for (base = 0, lim = p->header.nextindex; lim; lim >>= 1) {
 			index = base + (lim >> 1);
 
+			if (stbl[index] < 0) {
+				rc = -EIO;
+				goto out;
+			}
+
 			if (p->header.flag & BT_LEAF) {
 				/* uppercase leaf name to compare */
 				cmp =
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
