Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB1742E014
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 Oct 2021 19:31:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mb4Z0-0006at-Nd; Thu, 14 Oct 2021 17:30:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <antlists@youngman.org.uk>)
 id 1mb4A0-00041u-21; Thu, 14 Oct 2021 17:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QNOndtAPRGpqhXTX2FJjLHZSEuRxoMnhwtpO2+N6L0Q=; b=jqAj8P95GBS6QW2FZu0PrKIixa
 32sbrRO8F/YiEc8V7ZmL5qnhLvCmxsKiPmABp459H8ujdrSowttQTYniYIxXGN93DPp9dcXfau5WZ
 Upl/dXugqoDhBwa5P4dOHu5wfcqzkuKshcprvxAH+IxY/AvniZAtSukM/NoMdIsaVKAE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QNOndtAPRGpqhXTX2FJjLHZSEuRxoMnhwtpO2+N6L0Q=; b=drIZIPi/r75+Jzox/XRlkDT1zg
 UfUYvTkt+O4wAACiyikrGgaDmEcpGIAzz/H5vPm+vKzKfsHJVKiJjakFfd5d7FH5WHgk7ecC7C8Y8
 k/6z07jzn0sUDewgOIFY4f3QubKjggtpfqoHdSOkEjkAl6U77RwlKjRyRB95gaNa4ZlI=;
Received: from smtp.hosts.co.uk ([85.233.160.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mb49x-0004Bl-BF; Thu, 14 Oct 2021 17:04:51 +0000
Received: from host86-155-223-151.range86-155.btcentralplus.com
 ([86.155.223.151] helo=[192.168.1.65])
 by smtp.hosts.co.uk with esmtpa (Exim)
 (envelope-from <antlists@youngman.org.uk>)
 id 1mb2lr-0006Lw-DM; Thu, 14 Oct 2021 16:35:51 +0100
To: Kees Cook <keescook@chromium.org>, Dave Kleikamp <dave.kleikamp@oracle.com>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211014062844.GA25448@lst.de>
 <3AB8052D-DD45-478B-85F2-BFBEC1C7E9DF@tuxera.com>
 <a5eb3c18-deb2-6539-cc24-57e6d5d3500c@oracle.com>
 <202110140813.44C95229@keescook>
From: Wol <antlists@youngman.org.uk>
Message-ID: <e3d2f358-be1a-3413-fdb8-2e86718cde3e@youngman.org.uk>
Date: Thu, 14 Oct 2021 16:35:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <202110140813.44C95229@keescook>
Content-Language: en-GB
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 14/10/2021 16:14, Kees Cook wrote: >> I don't really mind
 bdev_size since it's analogous to i_size, but >> bdev_nr_bytes seems good
 to me. > I much prefer bdev_nr_bytes(), as "size" has no units. Does it mean
 size IN bytes, or size OF A byte? :-) 
 Content analysis details:   (-2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [85.233.160.19 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [85.233.160.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mb49x-0004Bl-BF
X-Mailman-Approved-At: Thu, 14 Oct 2021 17:30:40 +0000
Subject: Re: [Jfs-discussion] don't use ->bd_inode to access the block
 device size
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
Cc: "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "linux-nilfs@vger.kernel.org" <linux-nilfs@vger.kernel.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 "linux-bcache@vger.kernel.org" <linux-bcache@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "reiserfs-devel@vger.kernel.org" <reiserfs-devel@vger.kernel.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 14/10/2021 16:14, Kees Cook wrote:
>> I don't really mind bdev_size since it's analogous to i_size, but
>> bdev_nr_bytes seems good to me.

> I much prefer bdev_nr_bytes(), as "size" has no units.

Does it mean size IN bytes, or size OF A byte? :-)

Cheers,
Wol


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
