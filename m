Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B1B8B2201
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Apr 2024 14:53:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rzyba-0005oD-Me;
	Thu, 25 Apr 2024 12:53:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rzybX-0005o6-Jm
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 12:53:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KAaKjBOmTmKtiwXbnEwj76/jYmsGdqRarPPNKoQCzpQ=; b=NwTWci2ACfDfUliLTvWHwGFujw
 dZ3MZ+1zOAcsCJg9Kpdfw6isXjpFFTZK0PN3XGhcKlvDadh7WChjqC0vQsXAB2OgV8zy/Z5QTSdEO
 3J39s6LfMl41/0JO1Mz5Oq6RkEXiUYZ4gYD7ZXRoPLjspHEGz36DOZpaxGkAexQd7qwg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KAaKjBOmTmKtiwXbnEwj76/jYmsGdqRarPPNKoQCzpQ=; b=JnORV0FGmv6VTwP3EgZokq5yE+
 dZHLbOGpZswwYPpygyG1IzE9OLT+b/0ISMCR8A9voCk4XVceXOJger3AlfinYQIbZLkKdmSfv8TdF
 vl9r4dcAtBDFmRJhkA1N5RJEkHHYDTzpcUKdITR9Y8e9Aac6zLBRKi0bwl7Y8ri0chuc=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzybW-0002Up-Bq for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 12:53:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=KAaKjBOmTmKtiwXbnEwj76/jYmsGdqRarPPNKoQCzpQ=; b=pSBnG9S50M2h95Gw323PvYrCgU
 eS3udHqR1Aurzel+p6jTZ6oKATg1OaRBD1LcpDgbeVilplQdGrZbWJY8VQrMpK9MeDRKbqZTLzJYK
 IAkhW223WdCj1azUPJ2lNZu9lsdB/kPXanRPhTAsbsiQ/HMrHuo0mIT5MqyqgLrcStQi8lLtxWdzn
 0/vlJ6WPiUc4BgNOtOpETbKz2+VpO6mStBkqx0OsgBBY7FFBdIV345P+vxJTCIiYOpWsVg6Tki0Sx
 QY0QucCSuYkWnSX/Kb9e/irflumoOnJirnxvx5RCZr8p4m8QnCAPuS4EgY8jdZmsZyvHoR0y5INSW
 f3n+YjHw==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rzybD-000000033Bg-24jW;
 Thu, 25 Apr 2024 12:53:15 +0000
Date: Thu, 25 Apr 2024 13:53:15 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Jeongjun Park <aha310510@gmail.com>
Message-ID: <ZipSO4ITxuy2faKx@casper.infradead.org>
References: <ZilEXC3qLiqMTs29@casper.infradead.org>
 <20240425124433.28645-1-aha310510@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240425124433.28645-1-aha310510@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 25, 2024 at 09:44:33PM +0900,
 Jeongjun Park wrote: > Through direct testing and debugging,
 I've determined that this > vulnerability
 occurs when mounting an incorrect image, leading to > t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rzybW-0002Up-Bq
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
Cc: shaggy@kernel.org, brauner@kernel.org, eadavis@qq.com, jlayton@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Apr 25, 2024 at 09:44:33PM +0900, Jeongjun Park wrote:
> Through direct testing and debugging, I've determined that this 
> vulnerability occurs when mounting an incorrect image, leading to 
> the potential passing of an excessively large value to 
> 'sbi->bmap->db_agl2size'. Importantly, there have been no instances 
> of memory corruption observed within 'sbi->bmap->db_agl2size'. 
> 
> Therefore, I think implementing a patch that terminates the 
> function in cases where an invalid value is detected.

If that's the problem then the correct place to detect & reject this is
during mount, not at inode free time.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
