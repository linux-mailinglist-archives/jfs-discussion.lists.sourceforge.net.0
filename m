Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B54E1A9D29C
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Apr 2025 22:02:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u8PEx-0006K9-PS;
	Fri, 25 Apr 2025 20:01:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1u8PEu-0006K1-HL
 for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Apr 2025 20:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PCZojZ/zHTrseUyjrDFiaUsL6Zd8Ugb18vD3fXoqbck=; b=j0M8Ad7BI1M/eumDwYCgpCmpXQ
 izje/tP28tP3GmAcqUm4FBqf78N3oTXMIxZ+htka8Kbckohfw6SQD1G2+JXD5NfOpiuxz59SckHXy
 /cMklPctvn/k9qvVlEJgKuRrv1yFDGxgtLunfUg6hyY4oxUVMg6tzdpc75/db8b+XWQ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PCZojZ/zHTrseUyjrDFiaUsL6Zd8Ugb18vD3fXoqbck=; b=givwZ7gJql6l7K98aBzvCBw+Tf
 uoZHyu91Kv5h0tE3QSSW5KQ4xilKTVQCK2GrxSzmF2whhmwnl8szJbsFZMSWSQVlq2us0xSD1f/zm
 yk9CiUhenZnJfHKSSs4UhI5moMVYFTJ+YWOXP8iEYRkWT1j0eN9GyzZHTTanTHT7aVTU=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u8PEe-0008QG-9Q for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Apr 2025 20:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=PCZojZ/zHTrseUyjrDFiaUsL6Zd8Ugb18vD3fXoqbck=; b=r1rMBRHl3w6e4SEbKmMjDlPgiP
 VuXgnMLo4Br5pl1kRwRoU5Uo10fpPpbtb4x8LDL/tTQtiLAzTfUi74AD1rL91Nn/AnHvQkAB0ENE7
 Mf2n7TNe5CsRkUiOkTLbsUbiFVE2nvTxTjsJ2+J1SqF1AtLGMm9lQtRSJF2hXs0XGdkzN6huHZ6ef
 FgnqyCMw56YMQrkJKRmHJmyyTh2IHyCKeUXSEv1VzF3vwEUGqeIcSf4UaMOYEkUXL3Hzhby+dsxnI
 //kPM0KoX4hmj3YYlSdpWrXzQpbI6IR9ORQrDzbA30pKODNdHxixF8Ig0nktOGktFWtlprkJX4jfF
 nRIL5D+g==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1u8PEO-0000000FPAl-2mRE;
 Fri, 25 Apr 2025 20:01:04 +0000
Date: Fri, 25 Apr 2025 21:01:04 +0100
From: Matthew Wilcox <willy@infradead.org>
To: I Hsin Cheng <richard120310@gmail.com>
Message-ID: <aAvqAMBW7fzYkz_o@casper.infradead.org>
References: <66fcb7f9.050a0220.f28ec.04e8.GAE@google.com>
 <20250423023703.632613-1-richard120310@gmail.com>
 <nfnwvcefhvm5sfrvlqqf4zcdq2iyzk4f2n366ux3bjatj7o4vl@5hq5evovwsxp>
 <aAu92k-iPbnWBKGz@vaxr-BM6660-BM6360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aAu92k-iPbnWBKGz@vaxr-BM6660-BM6360>
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Apr 26, 2025 at 12:52:42AM +0800, I Hsin Cheng wrote:
 > > Can you print more about the folio where this happened? In particular
 it > > would be interesting what's in folio->flags, folio->mappi [...] 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [90.155.50.34 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in sa-accredit.habeas.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1u8PEe-0008QG-9Q
Subject: Re: [Jfs-discussion] [RFC PATCH] fs/buffer: Handle non folio buffer
 case for drop_buffer()
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
Cc: syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com, shaggy@kernel.org,
 brauner@kernel.org, Jan Kara <jack@suse.cz>, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, viro@zeniv.linux.org.uk,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, Apr 26, 2025 at 12:52:42AM +0800, I Hsin Cheng wrote:
> > Can you print more about the folio where this happened? In particular it
> > would be interesting what's in folio->flags, folio->mapping->flags and
> > folio->mapping->aops (resolved to a symbol). Because either the mapping has
> > AS_RELEASE_ALWAYS set but then we should have ->releasepage handler, or
> > have PG_Private bit set without buffers attached to a page but then again
> > either ->releasepage should be set or there's some bug in fs/buffer.c which
> > can set PG_Private without attaching buffers (I don't see where that could
> > be).
> > 
> 
> Hmm so I suppose when there're buffers attached, the PG_Private bit
> should always be set in folio->flags or folio->mapping->flags or
> folio->mapping->aops ?

See folio_attach_private().  I am trying to get rid of PG_private, but
we're not quite there yet.  The other information may help track down
what is going on.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
