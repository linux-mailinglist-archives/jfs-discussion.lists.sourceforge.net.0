Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0845882E4DC
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:26:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXHf-0001Uy-4m;
	Tue, 16 Jan 2024 00:26:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXHd-0001Us-Rs
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:26:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mKZVZC/6GuuAFqKOUP7Zgj+996Foqwuo4CWTdxeXUKY=; b=ej9qKE+ZJ9N3FA6v7nOv8T6jCs
 7xBF6tj1jk+9HePEyqYIv5OSWP3r5l8/jNIRcIR/pJlcqqeU0fsQlZ7Qu3jMtAy8qJcKt5UHJl/yY
 xwrE5587XvL22MDAT63ksV3JljUq0hZAcVMtpQ4AU3oGW0TbroHjjYFeXVZ7BMcFhAnQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mKZVZC/6GuuAFqKOUP7Zgj+996Foqwuo4CWTdxeXUKY=; b=fq5RXw89BFBy5Yy6vPCbDhQ664
 DdqG9p8DzGWmM5jebt29q4Pku5O+OSzKJVEhVYE5szUUT8ICvWrtyFNlzoiqlcSRzUd/Q2zjKWnak
 IwpSIXgnO+lZH8DNV2YPhJhwMxwAsttW3/LgVdnUiabEUXJtdj3YJyMUvCoWmij3jgtQ=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXHb-00033T-5h for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:26:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 954B2B80D58;
 Tue, 16 Jan 2024 00:26:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E488FC433F1;
 Tue, 16 Jan 2024 00:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364771;
 bh=SpTe8BJ7yO4sW4M5uWo2Mve55aYdgaEZRwtcx+2nZjM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dScT3bHzYfPAkNnpj7aRGx405wQeC/kPE4dZAJiJ7UOhO5kkc3YrfXzfF4UKPG5hC
 mKDydKNYBIC9SXZdCcFScGUSkrzKy91OcABL93uo1VjAXnyJUePOo2AJxr0oLUdLsX
 fOznWn4z0Y1LeYy1Lc121D+5B3AeNgC5a4SkXuTt7peXVVZgPIghnhj95JIuD5bbbf
 Ni41AM0fuDjHGxvJ9OGvV9Xy8Urxt2DLGCaBMa+DkTdiQ5p3AvKVlyTaPQz4BePcQx
 /CJGuJT6Gv4KVFIdEqVS5ZoAPB2jkLPATYrRJDWgEKQJI5VkY9PyRvYFHep2K6jyac
 AFrpkvbDaDUtQ==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:25:39 -0500
Message-ID: <20240116002603.215942-3-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116002603.215942-1-sashal@kernel.org>
References: <20240116002603.215942-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.147
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
X-Headers-End: 1rPXHb-00033T-5h
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.15 03/13] jfs: fix
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
index fafcb90219cf..a222a9d71887 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -633,6 +633,11 @@ int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
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
