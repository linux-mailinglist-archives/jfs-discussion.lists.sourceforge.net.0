Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E51577EE26
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Aug 2023 02:23:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qWQmv-0001Zd-5S;
	Thu, 17 Aug 2023 00:22:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux@treblig.org>) id 1qWQmt-0001ZW-JS
 for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Aug 2023 00:22:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hL96hbBANHiT64hkAT/5gUF0HzFQ4uiBU5rrtSW63yA=; b=Qy7EZ5/k96FBqTIDL7ZhPhyJtp
 7tnyuz3xnsOJwHk4j4nKLixW3F7TN+qnanZyPrx490qZZ/xNF7nPQ+Q9nyUD4iYBeCZmOTeKsZMkn
 eTtfzWYv23lU//eFPa4W4SuH20svO4nhy4ihb2/NGzGIQ+JmXz2bzaoKLZSO9iQMcH5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hL96hbBANHiT64hkAT/5gUF0HzFQ4uiBU5rrtSW63yA=; b=E
 9XwOcfYZjSm4X0O2QR6gBAWLjgD4cj1X7EksY6JVvDyj5XrdwCpZnCKjNFvvUBpwQUPGRiciE8vUB
 X3eXQmF4+R6rRzBE2iTBSYXEkabhWAhA7G+PyxvPEFOU6UfHIsLRQlDqoKIcU84J9yK+yoRlZsHwH
 ceW16uyL3KgSIxi8=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qWQms-007TXG-RQ for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Aug 2023 00:22:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hL96hbBANHiT64hkAT/5gUF0HzFQ4uiBU5rrtSW63yA=; b=OENBcsTCIL0oi+tvbG5uRfvcPv
 ovkXY+Gsc/KE8/8gROY5OAJc2EcDDwIhNOqb16/FjFuqQpgdvrDvzvqgyFsHKDX6+Wl9Rh/sXMJu5
 Stz+GcLhklQmmHucmczMJRJhaWBJOJFDsAfO55K12eQsCFioUucyFc109tnKbYC1aqenXzMoZ9Jsp
 lpzV32rbg8DRk4bjvxdUNzvVRpf/pFXV8GLvzG/gPXLaIh5Pg+6XPn9zx0HJOmHsF1IB7gT32j7x1
 m49kC+f7ghpUTgTFe6qoGoeZsfz82/W0a0acPedBVrjzooX6ZQMhJQCJFj69EGfJQW7db2mmpqtw8
 d03KqN/g==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.94.2)
 (envelope-from <linux@treblig.org>)
 id 1qWQmb-007LI0-FN; Thu, 17 Aug 2023 00:22:36 +0000
From: linux@treblig.org
To: smfrench@gmail.com, dave.kleikamp@oracle.com, tom@talpey.com,
 pc@manguebit.com
Date: Thu, 17 Aug 2023 01:22:28 +0100
Message-ID: <20230817002232.80079-1-linux@treblig.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: "Dr. David Alan Gilbert" <dave@treblig.org> The smb
 client and server code have (mostly) duplicated code for unicode manipulation, 
 in particular upper case handling. Flatten this lot into shared code. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qWQms-007TXG-RQ
Subject: [Jfs-discussion] [PATCH v5 0/4] dedupe smb unicode files
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
 linux-kernel@vger.kernel.org, "Dr. David Alan Gilbert" <dave@treblig.org>,
 krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: "Dr. David Alan Gilbert" <dave@treblig.org>

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

Version 5
  Add some (wchar_t *) casts to keep sparse
  happy, as spotted by kernel test robot

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
 fs/smb/client/smb2pdu.c                       |   4 +-
 fs/smb/server/Kconfig                         |   1 +
 fs/smb/server/unicode.c                       |   1 -
 fs/smb/server/unicode.h                       | 325 +----------------
 17 files changed, 342 insertions(+), 1166 deletions(-)
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
