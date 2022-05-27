Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C31536348
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 May 2022 15:21:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuZtf-0008I2-RG; Fri, 27 May 2022 13:20:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuZtd-0008Hi-Eb
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 13:20:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=++iGzJ5RyvCbarxonRdx9rs9lIBzvUwOZefKETchJ40=; b=RtbVjIdC9wJmPuwNGI/nyU7lQ8
 J4ZbH/euNVEQrOUu3N11Ad69vxCqZXn7pTCWQzH8mlNRH2ZRPkeejqZ9yh3NrRL/eiQ/wTDk50KBd
 /ESDpiLvZS+g+DhRrEaiCUhkItzy5CmrzAFtcKzZ7cHCXxzmdk+txVcwVEjRWPzsiJCA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=++iGzJ5RyvCbarxonRdx9rs9lIBzvUwOZefKETchJ40=; b=UgrPPDO4V8qRCfS4nthG0IxfNG
 3AFdxw2gM6W4ea0T66u4Qs1xqVO16sxw0ruRPxCVp+YnG0Hy6J9BEN8GyNKhlE5E78FamXKbfnxSy
 kSZHoFdtf4FwQk6ulZpgTCMAhqIx9Ld/tqKZWCt40g6EJTRmXq3l/f0joJn7Ubrxv6tM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuZtY-0003g4-I0
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 13:20:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=++iGzJ5RyvCbarxonRdx9rs9lIBzvUwOZefKETchJ40=; b=L3b1HkZaxV5cgJNX0whAu3mIuD
 8p2YSC1GscNuTrJCq0H+Ssizimd3yYjyTi6gJCD0TRReIu2YJbyckoCNF6Cs3g6os+1zUfMpLrx8J
 ju3SGciLp3phKIj7M8ascMnJ7QSHQQFhMQRv+PWDJi/B2kVJ8RlgSMAaHF24oOa5yG851Oxav4K5i
 5FKTXqvXSKcpIL+XRbgEnu4Vrgw8JhIwMfVU96m8Ega4o4OuV2SeTXMXBLSKAGxs7+STTTFD94D3c
 n/kHNzUoWoC8S1yusS6fcLUjBHNKPOfKf8moPpUEMk/Rm//8/+s+XDMNhQ8BZF6yPK7Nvho+N4qfc
 Huy03Wjw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuZtL-0027O1-LM; Fri, 27 May 2022 13:20:35 +0000
Date: Fri, 27 May 2022 14:20:35 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <YpDQI3366vH9Ux2i@casper.infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220526192910.357055-2-willy@infradead.org>
 <YpBjD4Y7su+GVSkX@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YpBjD4Y7su+GVSkX@infradead.org>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 26, 2022 at 10:35:11PM -0700, Christoph Hellwig
 wrote: > On Thu, May 26, 2022 at 08:29:02PM +0100, Matthew Wilcox (Oracle)
 wrote: > > Al's patch. > > > > Signed-off-by: Matthew Wilcox (Ora [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nuZtY-0003g4-I0
Subject: Re: [Jfs-discussion] [RFC PATCH 1/9] IOMAP_DIO_NOSYNC
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
Cc: linux-fsdevel@vger.kernel.org, "Darrick J . Wong" <djwong@kernel.org>,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, May 26, 2022 at 10:35:11PM -0700, Christoph Hellwig wrote:
> On Thu, May 26, 2022 at 08:29:02PM +0100, Matthew Wilcox (Oracle) wrote:
> > Al's patch.
> > 
> > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> 
> Hmm, that is a bit of a weird changelog..

I took parts of
https://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git/commit/?h=new.iov_iter&id=447262443a4dbf88ae5b21de5c77197f084cdca4

and fixed it up a bit but dropped the btrfs parts.

> >  		/* for data sync or sync, we need sync completion processing */
> > -		if (iocb->ki_flags & IOCB_DSYNC)
> > +		if (iocb->ki_flags & IOCB_DSYNC &&
> > +		    !(dio_flags & IOMAP_DIO_NOSYNC))
> >  			dio->flags |= IOMAP_DIO_NEED_SYNC;
> >  
> >  		/*
> 
> I think we also need to skip the setting of IOMAP_DIO_WRITE_FUA below
> (or find a way to communicate back to the that FUA was used, which
> seems way more complicated)

Probably ... I was just looking to avoid the deadlock.  Patch not for
upstream in this form; I'm expecting Al to submit a fixed version before
the JFS code is ready for upstream.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
