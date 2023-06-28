Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B7F7412BD
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 15:42:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEVQY-00015Q-QX;
	Wed, 28 Jun 2023 13:41:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qEVQW-00014S-9i
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 13:41:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EPySIftZSA/ANVv7duy+nkpNF1TRSIy5ZkBMzXpU3B4=; b=iqic+cfcABRFlXbniXyzDz1CL/
 wUCK8rMuvPJFnVaB36WuwRkTYThR5QqkH98RqiX/K6WzhVRmM7SlSBXUHVSRN/0Nb1aIqd391rqiW
 nA0AMnMGgzNNDi5p/ZsGEr7oiNGKi/rEmRBcuDRu0cFIjCkMhw4fA6pjEReb/VgtTR8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EPySIftZSA/ANVv7duy+nkpNF1TRSIy5ZkBMzXpU3B4=; b=nQWaA8qRJZyqrb3BSsV+36AkxG
 C59KGuGqoV7rub/9kgwNwXAnYD38fjPGFvshMUOqTrYYF2nSfX9lkfmfC00Ej6mOvVHLAOwKx3Edb
 0QHzzgjxdEbKAypV0u82p8VuC8l+WXe9zfg4rn/AvxdVSB2/EqcRjLqx08CyANIEObOE=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEVQV-000CzT-2L for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 13:41:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=EPySIftZSA/ANVv7duy+nkpNF1TRSIy5ZkBMzXpU3B4=; b=UN6LVzBThsGmqA3+M7gmTxfh1l
 zMVyubo43pIUiCCMKEzgJSXs8rhru8EwKMOZvlO/ekv+vM4VkuQOcSPy8mlYA6WE/lblOu9Ulio8P
 Zt8p2SXv6APS2z3SP6RI9Av+YriIxYFvrWXapRlB5mwcW7B3uwpN3u/vW9TX9UraBMF6cvHp6OJ71
 hlhfXBm85dK6NFNyb9SOn6JyCblqLjjNrx+PzqWXWt47x6q4zKp9T+KE+oVYECmID0M/qbazE2gtS
 g+bmH3BNR2s/LOFIju1kaf2zO5OUlG286VA2GKn1t5hrHV4/6Y/TYbrN4bFSzQXZon/Jv1WIcSiQx
 3zprm/ew==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qEVQG-00GT0N-Px; Wed, 28 Jun 2023 13:41:28 +0000
Date: Wed, 28 Jun 2023 13:41:28 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Tom Talpey <tom@talpey.com>
Message-ID: <ZJw4iLlFWRMq6a3S@gallifrey>
References: <20230628011439.159678-1-linux@treblig.org>
 <9343462e-6a4a-ca7b-03b8-4855e5a33b72@talpey.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9343462e-6a4a-ca7b-03b8-4855e5a33b72@talpey.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-21-amd64 (x86_64)
X-Uptime: 13:41:22 up 101 days, 15 min,  1 user,  load average: 0.01, 0.05,
 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  * Tom Talpey (tom@talpey.com) wrote: > On 6/27/2023 9:14 PM, 
 linux@treblig.org wrote: > > From: "Dr. David Alan Gilbert"
 <linux@treblig.org>
 > > > > The smb client and server code have (mostly) duplic [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qEVQV-000CzT-2L
Subject: Re: [Jfs-discussion] [PATCH 0/3] dedupe smb unicode files
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
Cc: sfrench@samba.org, linux-cifs@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, linkinjeon@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

* Tom Talpey (tom@talpey.com) wrote:
> On 6/27/2023 9:14 PM, linux@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <linux@treblig.org>
> > 
> > The smb client and server code have (mostly) duplicated code
> > for unicode manipulation, in particular upper case handling.
> > 
> > Flatten this lot into shared code.
> > 
> > There's some code that's slightly different between the two, and
> > I've not attempted to share that - this should be strictly a no
> > behaviour change set.
> > 
> > I'd love to also boil out the same code from fs/jfs/ - but that's
> > a thought for another time (and harder since there's no good test
> > for it).
> > 
> > Lightly tested with a module and a monolithic build, and just mounting
> > itself.
> > 
> > This dupe was found using PMD:
> >    https://pmd.github.io/pmd/pmd_userdocs_cpd.html
> > 
> > Dave
> > 
> > Dr. David Alan Gilbert (3):
> >    fs/smb: Remove unicode 'lower' tables
> >    fs/smb: Swing unicode common code from server->common
> >    fs/smb/client: Use common code in client
> > 
> >   fs/smb/client/cifs_unicode.c                  |   1 -
> >   fs/smb/client/cifs_unicode.h                  | 313 +-----------------
> >   fs/smb/client/cifs_uniupr.h                   | 239 -------------
> >   fs/smb/common/Makefile                        |   1 +
> >   .../uniupr.h => common/cifs_unicode_common.c} | 156 +--------
> >   fs/smb/common/cifs_unicode_common.h           | 279 ++++++++++++++++
> 
> So far so good, but please drop the "cifs_" prefix from this new file's
> name, since its contents apply to later smb dialects as well.

Sure.

Dave

> Tom.
> 
> >   fs/smb/server/unicode.c                       |   1 -
> >   fs/smb/server/unicode.h                       | 301 +----------------
> >   8 files changed, 298 insertions(+), 993 deletions(-)
> >   delete mode 100644 fs/smb/client/cifs_uniupr.h
> >   rename fs/smb/{server/uniupr.h => common/cifs_unicode_common.c} (50%)
> >   create mode 100644 fs/smb/common/cifs_unicode_common.h
> > 
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
