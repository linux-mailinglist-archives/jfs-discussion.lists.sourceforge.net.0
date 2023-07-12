Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F0F751462
	for <lists+jfs-discussion@lfdr.de>; Thu, 13 Jul 2023 01:18:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qJj6B-0002xk-2v;
	Wed, 12 Jul 2023 23:18:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qJj67-0002xe-SL
 for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 23:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5mUxfgJDdckbP7JIrFh96lrJMsGTOSdHCH5f/f6iXKI=; b=ILCYsKD4g8ldcNKZ+twNVKUOO+
 VSqIP8Fl5t9j4fIE9nzmWmD/4qkejsWiugoz4IGAGD7UIqPSmKa+u7VYQ/Mr68kIObla7fdcXYpZB
 U29UxQhk6teRidKCT0vUXnu4PcVL5wIyTqzrlCp/LWwBdaJRDJr/ngPRjP1JS9SzhFSI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5mUxfgJDdckbP7JIrFh96lrJMsGTOSdHCH5f/f6iXKI=; b=VdYib4CfVlcO7xZr0mPwdZKXaT
 VoOnriCB/k5Xa3pnMbYrAaKG+Tuspn4IspvvpkdsKTIH2vBKSVWi1+NQ3V4Ml7545cur0UrjgUun6
 YEBTOoEosp7dRPLEV9pl6iptB+btn0TrYDULb46iGn9rG8hUrKIBHL+K/7eibXy54rjg=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qJj62-005wKk-5y for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 23:18:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=5mUxfgJDdckbP7JIrFh96lrJMsGTOSdHCH5f/f6iXKI=; b=H/xd/EKZwwwRnmzUWi1/zQisH2
 EsVVAAe02P5WKT4gqRhUbexi1RsHzNExjO2c5HtLJ6vKe6rC1aOc6zM2vzG8hmbcZWy1KxtzThe56
 slzKtID9BLsrkudsFh4OxH9IkdP27Pi3s6cxj3f0RjD4lOhSfGKDibpkBQzJps16zvsvNrdELdR9l
 t0utAgVFxtOCWMFY1K/KdV6zEr2VLfqZOS9llfQjD0UknQm9Xby01/uj/s2ybFW+FXKeJZSU/FxEI
 ow4sNWPl8bVcQ0tCmRLbtx1GiMrAyko1r8kiz9EbeaHvd1A7ZPjUgUhrtCIhgucw2jhyXkfdfCVWp
 kCQqKrYQ==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qJj5e-000zJZ-74; Wed, 12 Jul 2023 23:17:46 +0000
Date: Wed, 12 Jul 2023 23:17:46 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: sfrench@samba.org, linkinjeon@kernel.org, tom@talpey.com,
 dave.kleikamp@oracle.com, shaggy@kernel.org, linux-cifs@vger.kernel.org
Message-ID: <ZK80mu/YbHLEABAB@gallifrey>
References: <20230628232417.120844-1-linux@treblig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230628232417.120844-1-linux@treblig.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-23-amd64 (x86_64)
X-Uptime: 23:16:20 up 6 days,  8:47,  1 user,  load average: 0.05, 0.03, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: * linux@treblig.org (linux@treblig.org) wrote: > From: "Dr.
 David Alan Gilbert" <linux@treblig.org> > > The smb client and server code
 have (mostly) duplicated code > for unicode manipulation, in part [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qJj62-005wKk-5y
Subject: Re: [Jfs-discussion] [PATCH v2 0/4] dedupe smb unicode files
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
Cc: jfs-discussion@lists.sourceforge.net, krisman@collabora.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

* linux@treblig.org (linux@treblig.org) wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> The smb client and server code have (mostly) duplicated code
> for unicode manipulation, in particular upper case handling.
> 
> Flatten this lot into shared code.

Gentle two week ping on this please.

Dave

(Apologies to the 3 of you who already got a copy of this ping,
recent due to a missing header ',' )

> There's some code that's slightly different between the two, and
> I've not attempted to share that - this should be strictly a no
> behaviour change set.
> 
> In addition, the same tables and code are shared in jfs, however
> there's very little testing available for the unicode in there,
> so just share the raw data tables.
> 
> I suspect there's more UCS-2 code that can be shared, in the NLS code
> and in the UCS-2 code used by the EFI interfaces.
> 
> Lightly tested with a module and a monolithic build, and just mounting
> itself.
> 
> This dupe was found using PMD:
>   https://pmd.github.io/pmd/pmd_userdocs_cpd.html
> 
> Dave
> 
> Version 2
>   Moved the shared code to fs/nls after v1 feedback.
>   Renamed shared tables from Smb to Nls prefix
>   Move UniStrcat as well
>   Share the JFS tables
> 
> Dr. David Alan Gilbert (4):
>   fs/smb: Remove unicode 'lower' tables
>   fs/smb: Swing unicode common code from smb->NLS
>   fs/smb/client: Use common code in client
>   fs/jfs: Use common ucs2 upper case table
> 
>  fs/jfs/Kconfig               |   1 +
>  fs/jfs/Makefile              |   2 +-
>  fs/jfs/jfs_unicode.h         |  17 +-
>  fs/jfs/jfs_uniupr.c          | 121 -------------
>  fs/nls/Kconfig               |   8 +
>  fs/nls/Makefile              |   1 +
>  fs/nls/nls_ucs2_data.h       |  15 ++
>  fs/nls/nls_ucs2_utils.c      | 144 +++++++++++++++
>  fs/nls/nls_ucs2_utils.h      | 285 ++++++++++++++++++++++++++++++
>  fs/smb/client/Kconfig        |   1 +
>  fs/smb/client/cifs_unicode.c |   1 -
>  fs/smb/client/cifs_unicode.h | 330 +----------------------------------
>  fs/smb/client/cifs_uniupr.h  | 239 -------------------------
>  fs/smb/server/Kconfig        |   1 +
>  fs/smb/server/unicode.c      |   1 -
>  fs/smb/server/unicode.h      | 325 +---------------------------------
>  fs/smb/server/uniupr.h       | 268 ----------------------------
>  17 files changed, 467 insertions(+), 1293 deletions(-)
>  delete mode 100644 fs/jfs/jfs_uniupr.c
>  create mode 100644 fs/nls/nls_ucs2_data.h
>  create mode 100644 fs/nls/nls_ucs2_utils.c
>  create mode 100644 fs/nls/nls_ucs2_utils.h
>  delete mode 100644 fs/smb/client/cifs_uniupr.h
>  delete mode 100644 fs/smb/server/uniupr.h
> 
> -- 
> 2.41.0
> 
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
