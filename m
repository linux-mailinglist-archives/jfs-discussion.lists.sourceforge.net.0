Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A4353940F
	for <lists+jfs-discussion@lfdr.de>; Tue, 31 May 2022 17:32:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nw3r1-0001CT-US; Tue, 31 May 2022 15:32:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nw3r0-0001CN-AR
 for jfs-discussion@lists.sourceforge.net; Tue, 31 May 2022 15:32:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iz3M3No8iAq/ARHTW/FoyqRzLDG6u02rBVIzMFROFuc=; b=KssKr6vMiwUDAH6mZx397zJ2cs
 ReveAegBLpKao312tgaFhRGGzRiDRa8K0d+zdYWJnYm8yPhpTVBvmYHurct4Jj9RxvbGfQJJ60Onh
 1mhyFll2gbW/j0BL/F+0aAiTJ2qbKNaQSTSljWhU/eTGB/J6lt7sHnwvRmhkfcdHaBpQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iz3M3No8iAq/ARHTW/FoyqRzLDG6u02rBVIzMFROFuc=; b=fhVegRHrlmnzbN/Mrbu1ITeESR
 oIwvufaKApgyHlUsToIia1lfCinurfG3nCfLwc431FO5guQrprvGWfNRAwtNLFvEc6KM6Cb2L+FGe
 IqWqpm5Se/Zr1guNWJXAzI0tNQUb67D50/o0mV6hXRptmufZaz5HuVXruCrd7NHUCvRo=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nw3qx-00AkwN-6l
 for jfs-discussion@lists.sourceforge.net; Tue, 31 May 2022 15:32:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=iz3M3No8iAq/ARHTW/FoyqRzLDG6u02rBVIzMFROFuc=; b=cdb2gpQP57M0WbFmhuDFQUL3cF
 WKZnsDnkDrM4yT6w8OgdUo1mYLxSdRGPqT+i2KJXh5KEVFE7dSba1pp1me+e0rpTW4D5YfqKVs5KW
 jTfZEOazD/uNpKU65zKMGUnAaJpZIVwoMxNTIoN+fh9U8R0xBj81qDwiGyvvmCvzyiwtxrgiksEj1
 kcTwFrGvr3zkJpEXHnjCodMR8IWFxy0/8V3GFps7GNr7O8kb7xR4VWEOtdmDZ9fTLYIEKDh+t33+0
 I8qV+ocfYAR/eZ679nMnK3sYJlESevFH7ZP6+OTwUq3HS1Af6Px0D2I/vlOZvMoFLM27Z7T6SUrFD
 otus5BRw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nw3qX-005Txh-G8; Tue, 31 May 2022 15:31:49 +0000
Date: Tue, 31 May 2022 16:31:49 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <YpY05ROgPowLbC77@casper.infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220528000216.GG3923443@dread.disaster.area>
 <YpGF3ceSLt7J/UKn@casper.infradead.org>
 <20220528053639.GI3923443@dread.disaster.area>
 <YpJxEwl+t93pSKLk@mit.edu>
 <20220529235122.GJ3923443@dread.disaster.area>
 <b3b1a6a0-f6fe-b054-c3ad-b6ab0f62314c@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3b1a6a0-f6fe-b054-c3ad-b6ab0f62314c@oracle.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 31, 2022 at 08:51:40AM -0500,
 Dave Kleikamp wrote:
 > On 5/29/22 6:51PM, Dave Chinner wrote: > > "Just because we can" isn't
 a good answer. The best code is code we > > don't have to write [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nw3qx-00AkwN-6l
Subject: Re: [Jfs-discussion] [RFC PATCH 0/9] Convert JFS to use iomap
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
Cc: jfs-discussion@lists.sourceforge.net, Theodore Ts'o <tytso@mit.edu>,
 "linux-ext4@vger.kernel.org Darrick J . Wong" <djwong@kernel.org>,
 Dave Chinner <david@fromorbit.com>, mythtv-dev@mythtv.org,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, May 31, 2022 at 08:51:40AM -0500, Dave Kleikamp wrote:
> On 5/29/22 6:51PM, Dave Chinner wrote:
> > "Just because we can" isn't a good answer. The best code is code we
> > don't have to write and maintain. If it's a burden to maintain and a
> > barrier to progress, then we should seriously be considering
> > removing it, not trying to maintain the fiction that it's a viable
> > supported production quality filesystem that people can rely on....
> 
> I'm onboard to sunsetting jfs. I don't know of anyone that is currently
> using it in any serious way. (jfs-discussion group, this is a good time to
> chime in if you feel differently.)

We should probably get the mythtv people to stop recommending JFS.

https://www.mythtv.org/wiki/User_Manual:Setting_Up#Filesystems



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
