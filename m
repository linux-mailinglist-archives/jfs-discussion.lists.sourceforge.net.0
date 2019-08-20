Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 402C395E94
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Aug 2019 14:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=djsOfnWFLfioroEiTXrKQ/nzLYNrcp5VCimQ4ficVCs=; b=l70hrlwp1vWxdt03YtO3yW7f4
	3MeoAjsQt44c4nbFb6QN1OF7PlQeoHrFPdYnCP+EqlyoJR6Vww4LUIyRRLLLSYv5hTezMv9dfKXR4
	NwDYNqY1ozoEnGzjUnJic7kQls3VHh/yqECpcncCPm0Cz7Wx8ogG+y8KaO6InstzQ4Z2o=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1i03Ix-0007HY-7t; Tue, 20 Aug 2019 12:32:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <al@alarsen.net>) id 1i02Zx-0007BR-LE
 for jfs-discussion@lists.sourceforge.net; Tue, 20 Aug 2019 11:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mDk8OlCGIB6EhD5weVd+fJ6RnWW2vsYjn5UPSJ49uVE=; b=I5dyRMGapNxYOlW2StwJ24xbam
 eri36rhdjIzO/AKKJxZBzgt0cT35h5+VDwiVV4ySrLYKmz/F8qNb8yHxl4jtHDAVsFFA2wyvxFk5B
 oSb/r2wakzkoPXopgs4Q+0WDwpBVG5Jpr1fIiUIv/XAw4xb+T0NY4K3b77neeF0hUWFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mDk8OlCGIB6EhD5weVd+fJ6RnWW2vsYjn5UPSJ49uVE=; b=e3tlRz6quQPNXCi6TxY4C0oTmK
 8/GyN0ajs3gr7XIQ69qVT3Z/nZu6P1e6hgRjmKJWLaOIDHTyMTim0/xUQD/ETj/O2d8ilvJ0xFw9L
 r0eulWAPM4NrLj4RHaJq4sd5vdeoLTITr7a1YRDVBftAUfYZVdI/N1hZ+qhqS+3x6sN0=;
Received: from mail.alarsen.net ([144.76.18.233])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i02Zv-009Oj8-57
 for jfs-discussion@lists.sourceforge.net; Tue, 20 Aug 2019 11:45:33 +0000
Received: from oscar.alarsen.net (unknown
 [IPv6:2001:470:1f0b:246:3924:9405:bfa9:9e67])
 by joe.alarsen.net (Postfix) with ESMTPS id E9D242B80E32;
 Tue, 20 Aug 2019 13:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alarsen.net; s=joe;
 t=1566300504; bh=mDk8OlCGIB6EhD5weVd+fJ6RnWW2vsYjn5UPSJ49uVE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SEh2P2AZ2TnUVaY61ToGPfeBiJ9MSzdTp97WuG6X/ffbN9fYq6MysDpCQT3EX4Yf0
 xicb80NRjLi5IbI5SarXz2OYSswAH8TKM+qJCIeP+idML96WA5znjZZVoEOG5kB8O2
 qXeM0uhYorlnqqauep/RqWer5HjmA4IP1WCerrMs=
Received: from oscar.localnet (localhost [IPv6:::1])
 by oscar.alarsen.net (Postfix) with ESMTP id 4117F27C0945;
 Tue, 20 Aug 2019 13:28:23 +0200 (CEST)
To: Deepa Dinamani <deepa.kernel@gmail.com>
Date: Tue, 20 Aug 2019 13:28:23 +0200
Message-ID: <10056508.664JITJLOY@alarsen.net>
In-Reply-To: <20190818165817.32634-7-deepa.kernel@gmail.com>
References: <20190818165817.32634-1-deepa.kernel@gmail.com>
 <20190818165817.32634-7-deepa.kernel@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squashfs.org.uk]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i02Zv-009Oj8-57
X-Mailman-Approved-At: Tue, 20 Aug 2019 12:32:01 +0000
Subject: Re: [Jfs-discussion] [PATCH v8 06/20] fs: Fill in max and min
 timestamps in superblock
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
From: Anders Larsen via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Anders Larsen <al@alarsen.net>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, darrick.wong@oracle.com, y2038@lists.linaro.org,
 richard@nod.at, codalist@coda.cs.cmu.edu, hch@infradead.org, coda@cs.cmu.edu,
 linux-ext4@vger.kernel.org, salah.triki@gmail.com, dushistov@mail.ru,
 arnd@arndb.de, reiserfs-devel@vger.kernel.org, viro@zeniv.linux.org.uk,
 aivazian.tigran@gmail.com, jaharkes@cs.cmu.edu, luisbg@kernel.org,
 nico@fluxnic.net, linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 jack@suse.com, linux-fsdevel@vger.kernel.org, phillip@squashfs.org.uk,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sunday, 2019-08-18 18:58 Deepa Dinamani wrote:
> Fill in the appropriate limits to avoid inconsistencies
> in the vfs cached inode times when timestamps are
> outside the permitted range.
> 
> Even though some filesystems are read-only, fill in the
> timestamps to reflect the on-disk representation.
> 
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> Reviewed-by: Darrick J. Wong <darrick.wong@oracle.com>
> Cc: aivazian.tigran@gmail.com
> Cc: al@alarsen.net
> Cc: coda@cs.cmu.edu
> Cc: darrick.wong@oracle.com
> Cc: dushistov@mail.ru
> Cc: dwmw2@infradead.org
> Cc: hch@infradead.org
> Cc: jack@suse.com
> Cc: jaharkes@cs.cmu.edu
> Cc: luisbg@kernel.org
> Cc: nico@fluxnic.net
> Cc: phillip@squashfs.org.uk
> Cc: richard@nod.at
> Cc: salah.triki@gmail.com
> Cc: shaggy@kernel.org
> Cc: linux-xfs@vger.kernel.org
> Cc: codalist@coda.cs.cmu.edu
> Cc: linux-ext4@vger.kernel.org
> Cc: linux-mtd@lists.infradead.org
> Cc: jfs-discussion@lists.sourceforge.net
> Cc: reiserfs-devel@vger.kernel.org
> ---
>  fs/befs/linuxvfs.c       | 2 ++
>  fs/bfs/inode.c           | 2 ++
>  fs/coda/inode.c          | 3 +++
>  fs/cramfs/inode.c        | 2 ++
>  fs/efs/super.c           | 2 ++
>  fs/ext2/super.c          | 2 ++
>  fs/freevxfs/vxfs_super.c | 2 ++
>  fs/jffs2/fs.c            | 3 +++
>  fs/jfs/super.c           | 2 ++
>  fs/minix/inode.c         | 2 ++
>  fs/qnx4/inode.c          | 2 ++

wrt qnx4, feel free to add
Acked-by: Anders Larsen <al@alarsen.net>





_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
