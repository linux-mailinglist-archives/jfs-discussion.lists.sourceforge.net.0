Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C89C129E9
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Oct 2025 03:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7OkJ1I5mUuZTD10J1wFXWVl54sU9s3YfQclkKiaqbtw=; b=XVSaaf/vU65i3Sn6AfknEE0VfZ
	6sa//1AsUeok6oJF2NXk5ibU/8MxhqFXuMqqPxhmSoYB4ADAppwvMr2V5yb5dfBTOzRsA+Z6b8xxB
	ifnq1OWeQWV04RAGyb0CzFXA5inLY3jSIp86eAVRmVJyojpwc8Mw8rktXc+lVIruKaug=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDZ2C-0002w2-8H;
	Tue, 28 Oct 2025 02:02:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nathan@kernel.org>) id 1vByRz-0003W3-9R
 for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 16:46:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ojkEDe204JfbVl3BChaIYwGe/CiF9JtI+sH+h4CiiQ=; b=LmMj+cqBgNJResbH0QmWIaQxm8
 /vMmhTvkjsDkE8A+jYtt3kupCMHxnp5ukK5IPSZbXGrltUb8ppMPkTQTxLfp3hPiYymE4SuuCCHFv
 ulG2dDnYGEmXXqpkiLz2jS8ktgkD12OGwK/1d7BKCCobG16AUnTa9f+L4s2w3ij5gD48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ojkEDe204JfbVl3BChaIYwGe/CiF9JtI+sH+h4CiiQ=; b=LU3FOdCdVmegZBcGn3Xe7GDeRN
 mSNo9lPcww2vlMEVU0cO88wLWBJqb5J5XZeuDD3/jfLr96bFOFTh3ukEwm7IDgVrJMm9Xg+gZuSYy
 p3Fn1nKPce2P8trJ9ouiQXTB/VWqGXCIUZkiGlHxQzVAshWKKc6GzTr3jbO+HmLI5cO8=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vByRz-0005jJ-KG for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 16:46:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E8AC661151;
 Thu, 23 Oct 2025 16:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD6B3C4CEE7;
 Thu, 23 Oct 2025 16:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1761237956;
 bh=qtOPVqukC5iqdVsYYN6G/HJCFCE384nTNnjCr8WVy7g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HIR+elVdaifJs5yC1CcHU/S6NEAiVjgh5oa4rNfrtDp+hRAqPXetY4Ht5fPM4CW/n
 sN7BNhT8F8NTQ5JQI+6HOu9O326DfPsn5lFGmE+DTZjWWlhD2hUhHAesmmiSTk1YZu
 6ZREA5iMwY/Z6ruQ+gIvQBhpQslzodiZDPy82lxEyODe376vbBgMafU+Kz/BofYCsX
 ajFGedOfYfVFYR9PQ4WwAKuFprlQSGy84bXs7pR/vmt3GOxe4QbcrhJUrWfRVO2P4T
 nhmOZaXIXZNMtxjuWEGCSTLafm/yzbb6I2+VgGZizm36vu5ntZ3KO95xrpDeHOSCXc
 O4OEkHwX6YdZQ==
Date: Thu, 23 Oct 2025 18:45:52 +0200
To: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <20251023164552.GC2090923@ax162>
References: <20251020142228.1819871-1-linux@rasmusvillemoes.dk>
 <20251020142228.1819871-2-linux@rasmusvillemoes.dk>
 <20251022161505.GA1226098@ax162>
 <CAKwiHFiMAm-DX3aERH_F1UooiM1YUiMaax51exhRg2=1ND2VCw@mail.gmail.com>
 <20251022211133.GA2063489@ax162> <20251023124041.GA739226@ax162>
 <0b2bc5fb-2345-47dd-b980-120805d3c69f@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b2bc5fb-2345-47dd-b980-120805d3c69f@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 23, 2025 at 09:17:47AM -0500,
 Dave Kleikamp wrote:
 > On 10/23/25 7:40AM, Nathan Chancellor wrote: > > Something like this is
 all it takes to resolve the issue, so I will send > > a patch f [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vByRz-0005jJ-KG
X-Mailman-Approved-At: Tue, 28 Oct 2025 02:02:00 +0000
Subject: Re: [Jfs-discussion] [PATCH 1/2] Kbuild: enable -fms-extensions
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
From: Nathan Chancellor via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Nathan Chancellor <nathan@kernel.org>
Cc: jfs-discussion@lists.sourceforge.net, linux-kbuild@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 David Sterba <dsterba@suse.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Oct 23, 2025 at 09:17:47AM -0500, Dave Kleikamp wrote:
> On 10/23/25 7:40AM, Nathan Chancellor wrote:
> > Something like this is all it takes to resolve the issue, so I will send
> > a patch for formal review/acking but I wanted to bring it up ahead of
> > time in case this is unpalpable and we should throw these changes out of
> > -next instead of forward fixing.
> 
> I'm on vacation now, so I may be slow to respond to a future patch, so I'll
> go ahead and give you my ack to this.
> 
> Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com>

Great, thanks for the tag and taking a look quickly!

> > diff --git a/fs/jfs/jfs_incore.h b/fs/jfs/jfs_incore.h
> > index 10934f9a11be..5aaafedb8fbc 100644
> > --- a/fs/jfs/jfs_incore.h
> > +++ b/fs/jfs/jfs_incore.h
> > @@ -76,14 +76,14 @@ struct jfs_inode_info {
> >   		struct {
> >   			unchar _unused[16];	/* 16: */
> >   			dxd_t _dxd;		/* 16: */
> > -			/* _inline may overflow into _inline_ea when needed */
> > +			/* _inline_sym may overflow into _inline_ea when needed */
> >   			/* _inline_ea may overlay the last part of
> >   			 * file._xtroot if maxentry = XTROOTINITSLOT
> >   			 */
> >   			union {
> >   				struct {
> >   					/* 128: inline symlink */
> > -					unchar _inline[128];
> > +					unchar _inline_sym[128];
> >   					/* 128: inline extended attr */
> >   					unchar _inline_ea[128];
> >   				};
> > @@ -101,7 +101,7 @@ struct jfs_inode_info {
> >   #define i_imap u.file._imap
> >   #define i_dirtable u.dir._table
> >   #define i_dtroot u.dir._dtroot
> > -#define i_inline u.link._inline
> > +#define i_inline u.link._inline_sym
> >   #define i_inline_ea u.link._inline_ea
> >   #define i_inline_all u.link._inline_all
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
