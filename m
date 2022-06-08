Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA62543932
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 Jun 2022 18:40:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nyyj6-0000XG-Gr; Wed, 08 Jun 2022 16:40:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nyyj4-0000X5-6d
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 16:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MwcirbnUcJouW4gUH1K/TOmiRgSxjZwJ44e3qbasRjw=; b=kRF6fC45BffZLnFWybdkU3qD53
 Q++okcX31Ti6Zkngwi+BlwSSFmf0CEHSqxdo45/EZuxdMCC7V9mqSdIkuVsyTwSphli5mhgMXKPan
 +cvG210L8ZQqieRTnhuYXKLXZuYJTMX/bmBLieKEigpWP2s4GCRsB41j9r7YCwp55bUE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MwcirbnUcJouW4gUH1K/TOmiRgSxjZwJ44e3qbasRjw=; b=G3cIq+Eh9kJfhHCxh9eK5dGecj
 lTOpR7ufqoc0cm95gQ+N0aDlewVDqLFmzUNpZFUzcNhNxsd8d/k5qWWF8VJrtG0bcRZ+E9rxDO2hg
 7IvznvrJEEb6NSbg1afpEnq64+YG8Yxvw1XJbzXy5yLtw1qQUR491TXPOtPEuAE6t07Q=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyyj3-0002In-0s
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 16:40:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MwcirbnUcJouW4gUH1K/TOmiRgSxjZwJ44e3qbasRjw=; b=KPU2tAnm20YupttNFKZCw4vsSw
 V34mWrQxMg05ebxlTlDF4a1rF1kSHDi+R/CanAeYjGeVD8EChUu7lULjOOShfWpIc/MwxLAQEDGBy
 B1HphdqDXHqh62RGXSSXAOTwWKlxwsNz89CA93mjrsonFTyExUtjHOkLM8uEkNFJYG69BtJAAE0b2
 kx0X/oggN+HDbEsXpU/XHY55Afc0DwIClrq9L0cApg7pKy7biH3JlvK0wFXta4HsEqGT3bCVubNlF
 d4I9TzXlgF7OwY71sXLdyaOBoi2R7ZGYgXzIHIQyGT4lj5W/5goPXH0VnYZlb9h/0St4zkQTb0Rv8
 zFWEfJyA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nyyit-00Cnqs-NR; Wed, 08 Jun 2022 16:39:59 +0000
Date: Wed, 8 Jun 2022 17:39:59 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YqDQ31eEWR4fRopC@casper.infradead.org>
References: <20220608150451.1432388-1-hch@lst.de>
 <20220608150451.1432388-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220608150451.1432388-2-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 08, 2022 at 05:04:47PM +0200, Christoph Hellwig
 wrote: > @@ -551,7 +548,8 @@ static int parse_options(char *options, struct
 super_block *sb, > clear_opt (opts->s_mount_opt, OLDALLOC); > br [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nyyj3-0002In-0s
Subject: Re: [Jfs-discussion] [PATCH 1/5] ext2: remove nobh support
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Jun 08, 2022 at 05:04:47PM +0200, Christoph Hellwig wrote:
> @@ -551,7 +548,8 @@ static int parse_options(char *options, struct super_block *sb,
>  			clear_opt (opts->s_mount_opt, OLDALLOC);
>  			break;
>  		case Opt_nobh:
> -			set_opt (opts->s_mount_opt, NOBH);
> +			ext2_msg(sb, KERN_INFO,
> +				"nobh option not supported");
>  			break;

This is the only part I wonder about.  Should we just silently accept
the nobh option instead of emitting a message?

Also, is it time to start emitting a message for nfs' intr option?  ;-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
