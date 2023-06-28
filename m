Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DF3740782
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 03:15:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEJmJ-0000oE-St;
	Wed, 28 Jun 2023 01:15:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux@treblig.org>) id 1qEJmF-0000o7-TI
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 01:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/t+hzQ8Pm+b2ZR3QQ9D2F2A8v6xsZAM4Ss0JjxqOWl4=; b=UZ2KnQbVEcx7NCjhoGcpLq0V3n
 AbJhdjvySXNOihHrhLsu2Ux/Oy+2mfpLUR8tV6dB/KnKwdFzx6wKm0nlkC+ytPaY4Ve8NX8bNAVBd
 ULUhK79hY8CDBorL1dfbOFRteUpX5rhKwGmiuh+cKMMJt2M//+oe+90+QuhOaGRYBoQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/t+hzQ8Pm+b2ZR3QQ9D2F2A8v6xsZAM4Ss0JjxqOWl4=; b=i
 m1sxrbTUd9VDl5EftUuOj0ko+ob2ZOdzteLnS3ShiBE9OYt4B7n/dhgGvl9BnKmL6VmV2mXxYthiy
 TkK2gzc2J24aC4tkKomwJlISuVVNfM5LFNSXhwI9eVIS0FZ3nx+ZjHV89SKOZqz3/m960lVnFe2O+
 h3bZGh98N88vgKNs=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEJmE-0004AQ-Iq for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 01:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/t+hzQ8Pm+b2ZR3QQ9D2F2A8v6xsZAM4Ss0JjxqOWl4=; b=EONVGkOAu/sT8l37mD9oCtWGV9
 WfOelj9ECgO5UHOdQ8RrQqzPbpRxfQVVYsbCJqMrzn0r2QyfM0HVZ+pwtLftwaJOTEsDcioJAk+Te
 BVuEoxPdUR6ZgALVkw+yuKCHbiuBqyb1FzALS/44k1kMomHmUnjlOPZBavSVDwaFg3Cn1VPfk5sBO
 XzrHEBcEVqiIFu2HFvnrAvnAWDbEXqIf2yemnjlw3t8QFFlu5FxxslYbrnPJSAxUAs04NLiqFdmY5
 V45qL/Fyh7uDkypEmScJf84URp/B3YitxCYOINuXlQYkb4DPdq8TaufTR/xuokrdyJsqkg2v300jK
 2eV/ysfQ==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.94.2)
 (envelope-from <linux@treblig.org>)
 id 1qEJlx-00GNA7-2t; Wed, 28 Jun 2023 01:15:03 +0000
From: linux@treblig.org
To: sfrench@samba.org,
	linkinjeon@kernel.org,
	linux-cifs@vger.kernel.org
Date: Wed, 28 Jun 2023 02:14:36 +0100
Message-ID: <20230628011439.159678-1-linux@treblig.org>
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qEJmE-0004AQ-Iq
Subject: [Jfs-discussion] [PATCH 0/3] dedupe smb unicode files
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
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

I'd love to also boil out the same code from fs/jfs/ - but that's
a thought for another time (and harder since there's no good test
for it).

Lightly tested with a module and a monolithic build, and just mounting
itself.

This dupe was found using PMD:
  https://pmd.github.io/pmd/pmd_userdocs_cpd.html

Dave

Dr. David Alan Gilbert (3):
  fs/smb: Remove unicode 'lower' tables
  fs/smb: Swing unicode common code from server->common
  fs/smb/client: Use common code in client

 fs/smb/client/cifs_unicode.c                  |   1 -
 fs/smb/client/cifs_unicode.h                  | 313 +-----------------
 fs/smb/client/cifs_uniupr.h                   | 239 -------------
 fs/smb/common/Makefile                        |   1 +
 .../uniupr.h => common/cifs_unicode_common.c} | 156 +--------
 fs/smb/common/cifs_unicode_common.h           | 279 ++++++++++++++++
 fs/smb/server/unicode.c                       |   1 -
 fs/smb/server/unicode.h                       | 301 +----------------
 8 files changed, 298 insertions(+), 993 deletions(-)
 delete mode 100644 fs/smb/client/cifs_uniupr.h
 rename fs/smb/{server/uniupr.h => common/cifs_unicode_common.c} (50%)
 create mode 100644 fs/smb/common/cifs_unicode_common.h

-- 
2.41.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
