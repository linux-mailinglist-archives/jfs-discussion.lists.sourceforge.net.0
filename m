Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E5477A463
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Aug 2023 02:54:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qUzMx-0006sh-5V;
	Sun, 13 Aug 2023 00:54:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux@treblig.org>) id 1qUzMv-0006sb-Tj
 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Aug 2023 00:54:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N707t0UnjD5n1c6jBmliOTt/74LPyhSTOmgkCoyTu4E=; b=SO5Wn6m408VddF/nrYrDFtXlEW
 FlzyZ7Mj56YlrKhn3iM+DwYNm6KSSyZAeLbKWpvFKpzVJdtnjZc0q4WcHqAwl4sPrr74oGd4Fsumz
 RPY3sxnFTRlWfq3y0sDqaaatcehggs5B4jeFok7RNaenHJknSFLI7wpQg0UB8dPIxy2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=N707t0UnjD5n1c6jBmliOTt/74LPyhSTOmgkCoyTu4E=; b=G
 mCHoA3x/27HC+ugRRTuUZeZa8423K6noL0fNetFqMqW17yJQFiuGzoeSRjjc7foE1GOdoTK54ngfW
 SGSy4RsGGNoB688pS+h8tQ1FsGO0E9v1iSNyD05eglJJf+gbG30u70c20pQ9SbQJ5E1HIyVokoEK4
 WWdzlh7PQgK0Vx6M=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qUzMt-003s9i-C1 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Aug 2023 00:54:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N707t0UnjD5n1c6jBmliOTt/74LPyhSTOmgkCoyTu4E=; b=hAInYZ6VTXQMVGAKjaW+4jr1fi
 KrSKOfVFyAkIfAs61blmYZ0BzFR/oyGtiLnMCvmSpiZUYmok0nIRUDIP0iPUwN/El9wUYAWztKbk9
 XGgOWAgYML3WMbMsLOvLHYa8vLjGx2kaAcGjp8ZIhjQTeCMqTe1rMdvfOCcky6Xeok1viXOMlvMZy
 lbuX4UAD4fvBUrIQh8CQZvUs0GF6DJ5+FRyYBKLSZJ12PUOg6/IaNxwkjFRjzxf99AbEogZXkFKbu
 C6abvMI1VmIUtb8arQsrc3VdFDsprYJN2g2flcs3gxAQqKm5zUr5Cv5AHCTqkfoCr0N+HYRZHfQW5
 pVKDp4Fg==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.94.2)
 (envelope-from <linux@treblig.org>)
 id 1qUzMe-006b54-OM; Sun, 13 Aug 2023 00:53:51 +0000
From: linux@treblig.org
To: smfrench@gmail.com, dave.kleikamp@oracle.com, tom@talpey.com,
 pc@manguebit.com
Date: Sun, 13 Aug 2023 01:53:40 +0100
Message-ID: <20230813005344.112955-1-linux@treblig.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: "Dr. David Alan Gilbert" <linux@treblig.org> The smb
 client and server code have (mostly) duplicated code for unicode manipulation, 
 in particular upper case handling. Flatten this lot into shared code. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qUzMt-003s9i-C1
Subject: [Jfs-discussion] [PATCH v4 0/4] dedupe smb unicode files
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, "Dr. David Alan Gilbert" <linux@treblig.org>,
 krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: "Dr. David Alan Gilbert" <linux@treblig.org>

The smb client and server code have (mostly) duplicated code
for unicode manipulation, in particular upper case handling.

Flatten this lot into shared code.

There's some code that's slightly different between the two, and
I've not attempted to share that - this should be strictly a no
behaviour change set.

In addition, the same tables and code are shared in jfs, however
there's very little testing available for the unicode in there,
so just share the raw data tables.

I suspect there's more UCS-2 code that can be shared, in the NLS code
and in the UCS-2 code used by the EFI interfaces.

Lightly tested with a module and a monolithic build, and just mounting
itself.

This dupe was found using PMD:
  https://pmd.github.io/pmd/pmd_userdocs_cpd.html

Dave

Version 4
  Put SPDX tag back to the way the tools like it, thanks to
    Paulo Alcantara for explaining

Version 3
  History comments simplification (Feedback from Tom Talpey)

Dr. David Alan Gilbert (4):
  fs/smb: Remove unicode 'lower' tables
  fs/smb: Swing unicode common code from smb->NLS
  fs/smb/client: Use common code in client
  fs/jfs: Use common ucs2 upper case table

 fs/jfs/Kconfig                                |   1 +
 fs/jfs/Makefile                               |   2 +-
 fs/jfs/jfs_unicode.h                          |  17 +-
 fs/jfs/jfs_uniupr.c                           | 121 -------
 fs/nls/Kconfig                                |   8 +
 fs/nls/Makefile                               |   1 +
 fs/nls/nls_ucs2_data.h                        |  15 +
 .../server/uniupr.h => nls/nls_ucs2_utils.c}  | 156 +--------
 fs/nls/nls_ucs2_utils.h                       | 285 +++++++++++++++
 fs/smb/client/Kconfig                         |   1 +
 fs/smb/client/cifs_unicode.c                  |   1 -
 fs/smb/client/cifs_unicode.h                  | 330 +-----------------
 fs/smb/client/cifs_uniupr.h                   | 239 -------------
 fs/smb/server/Kconfig                         |   1 +
 fs/smb/server/unicode.c                       |   1 -
 fs/smb/server/unicode.h                       | 325 +----------------
 16 files changed, 340 insertions(+), 1164 deletions(-)
 delete mode 100644 fs/jfs/jfs_uniupr.c
 create mode 100644 fs/nls/nls_ucs2_data.h
 rename fs/{smb/server/uniupr.h => nls/nls_ucs2_utils.c} (50%)
 create mode 100644 fs/nls/nls_ucs2_utils.h
 delete mode 100644 fs/smb/client/cifs_uniupr.h

-- 
2.41.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
