Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4AB545E09
	for <lists+jfs-discussion@lfdr.de>; Fri, 10 Jun 2022 10:01:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nzZZw-0006A5-ET; Fri, 10 Jun 2022 08:01:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hch@lst.de>) id 1nzZZu-00069j-JS
 for jfs-discussion@lists.sourceforge.net; Fri, 10 Jun 2022 08:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zalssCuj1l4UJ9/TBfYYQFophrJB9V9jX3H34GyrPrM=; b=JCoh4AJorqcUXNnNDIig4z1tKF
 WaBLUHFttWFBHlm6umv4Sn3ochvJ7sqqnJ3c4kM3KfPk1Ltaqo3vxuJKJAyNkG+vLxNwX++XD25xr
 hPHbbnnI1wxmJMq+ARMG2x8Yy+2icpexfMcI7vgUbbSVjuklAXPEoPPmsK0UGK4yISVI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zalssCuj1l4UJ9/TBfYYQFophrJB9V9jX3H34GyrPrM=; b=PJUJFWAY4GQm7Q/Pz9TOqe67vC
 22aTf22zU2qU/7EeradEovkdpU8ZPulVfH48FSv6esEe5dLTYaL0fkhPUW/I+piHG3TR6z9/x5Sf0
 8bF9p6cXKlDzRJ1Z7ghzCkDXUNJ9XZ4Y/R0vwaKhpSyN2G7YbPJ57pDlGT0x1B/5vWQ8=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzZZt-00DBA3-BY
 for jfs-discussion@lists.sourceforge.net; Fri, 10 Jun 2022 08:01:10 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7CBAE68AA6; Fri, 10 Jun 2022 10:00:58 +0200 (CEST)
Date: Fri, 10 Jun 2022 10:00:58 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jan Kara <jack@suse.cz>
Message-ID: <20220610080058.GB29310@lst.de>
References: <20220608150451.1432388-1-hch@lst.de>
 <20220608150451.1432388-5-hch@lst.de>
 <20220609173119.b34yp6ey6ybokfdl@quack3.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609173119.b34yp6ey6ybokfdl@quack3.lan>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 09, 2022 at 07:31:19PM +0200, Jan Kara wrote:
 > On Wed 08-06-22 17:04:50,
 Christoph Hellwig wrote: > > All callers of mpage_writepage
 use block_write_full_page as their > > ->writepage imp [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1nzZZt-00DBA3-BY
Subject: Re: [Jfs-discussion] [PATCH 4/5] fs: don't call ->writepage from
 __mpage_writepage
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

On Thu, Jun 09, 2022 at 07:31:19PM +0200, Jan Kara wrote:
> On Wed 08-06-22 17:04:50, Christoph Hellwig wrote:
> > All callers of mpage_writepage use block_write_full_page as their
> > ->writepage implementation, so hard code that.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> Similarly here NTFS (fs/ntfs3/) seems to have some non-trivial stuff besides
> block_write_full_page()...

Indeed, ntfs3 will need a prep patch to unwind this mess.  Thanks
for catching this!


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
