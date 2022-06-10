Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD28545E08
	for <lists+jfs-discussion@lfdr.de>; Fri, 10 Jun 2022 10:01:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nzZZe-00024B-8Y; Fri, 10 Jun 2022 08:00:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hch@lst.de>) id 1nzZZc-000242-0K
 for jfs-discussion@lists.sourceforge.net; Fri, 10 Jun 2022 08:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Qao3raZNyb+ezWpJg2KYp2VhLzdYSi0QKsL2w5oT/4=; b=M0tXHtxPepOacr77jhtOi1EfX0
 9fXFlKDUnKwzsxYU7x4YkjD0xnAa/pot3pWbOf4vMOwDN7Op0udpoF6goF3AuPH9umYt9B2Jpw1sr
 yzXzHUpmvMKIGAOMXBgs2+XTi3VugMDNA4qV8aAOJQoA5Jv9h6BbNmt7lb4fvSRigQ8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Qao3raZNyb+ezWpJg2KYp2VhLzdYSi0QKsL2w5oT/4=; b=HVJ6bL1s1frUpGnQ2SGs/NFHTn
 1EdwNIsja0Ms2F2206L3CQEW+uWuwD/LZI1NLpc704xo/ihKDFB1gtldp9dOWx+BOAxT8iD/VRsoI
 zPoaOA8kNWb1jC3xJWghH7UUm9y72Y5NGZnRgneXs362yImJrI8nQCzKRet0paP3PPio=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzZZX-0008Fx-Ej
 for jfs-discussion@lists.sourceforge.net; Fri, 10 Jun 2022 08:00:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 133BA68AA6; Fri, 10 Jun 2022 10:00:33 +0200 (CEST)
Date: Fri, 10 Jun 2022 10:00:32 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jan Kara <jack@suse.cz>
Message-ID: <20220610080032.GA29310@lst.de>
References: <20220608150451.1432388-1-hch@lst.de>
 <20220608150451.1432388-6-hch@lst.de>
 <20220609172530.q7bzttn5v2orirre@quack3.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609172530.q7bzttn5v2orirre@quack3.lan>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 09, 2022 at 07:25:30PM +0200, Jan Kara wrote:
 > On Wed 08-06-22 17:04:51,
 Christoph Hellwig wrote: > > No one calls mpage_writepages
 with a NULL get_block paramter, so remove > > support f [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1nzZZX-0008Fx-Ej
Subject: Re: [Jfs-discussion] [PATCH 5/5] fs: remove the NULL get_block case
 in mpage_writepages
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Jun 09, 2022 at 07:25:30PM +0200, Jan Kara wrote:
> On Wed 08-06-22 17:04:51, Christoph Hellwig wrote:
> > No one calls mpage_writepages with a NULL get_block paramter, so remove
> > support for that case.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> What about ntfs_writepages()? That seems to call mpage_writepages() with
> NULL get_block() in one case...

Oops, yeah.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
