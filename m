Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAEB275029
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Sep 2020 07:01:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kKwta-0003YX-J0; Wed, 23 Sep 2020 05:00:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <darrick.wong@oracle.com>) id 1kKwtZ-0003YP-3g
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Sep 2020 05:00:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y7KcEv0cH2wcXQfqZi8DVT/Kis2ijpSFtePEekaqdn0=; b=C47+Sw6qN7Uq12aNuVX1b9evMJ
 JG/aWFwbilrhQIYr+FrZJD3MIPvfHsVdxoVwmHLYD/dl6sS3KHNi9Mt4ZGqoKl63+VeGdA1cv5Y3e
 0rHTI8d9paG7yorBXTtQkxjhsfyDRpR9nFcw9kw7pc3wxzGdxwABYsgtzOgI4VHFVcOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y7KcEv0cH2wcXQfqZi8DVT/Kis2ijpSFtePEekaqdn0=; b=E8AtMlEkS44npiTS0uv+nLJTlj
 5RNNOdhmlMBFVSxlp51/E0PSN2eDx2GmNpzjq2sEA9/KgjYlD5dF7A4/lB78LfIJDLJBz/GKGt1i2
 kp9adKisHYA2p1I67+myEckpOqJBfZ8WRq6L2DmUzYuyUx7YhDFQKa5xOPZ8WkczkCLA=;
Received: from aserp2130.oracle.com ([141.146.126.79])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kKwtT-0023Bg-Er
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Sep 2020 05:00:44 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08N50B5Y102299;
 Wed, 23 Sep 2020 05:00:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=y7KcEv0cH2wcXQfqZi8DVT/Kis2ijpSFtePEekaqdn0=;
 b=ovwcldhHfVKucVYCJd2vN1Fbfe6WoW53QXU879Cu1Rgu573PEqJgipAl/U7jJpVFGrQ4
 MEng3+DWWWBWvC7BzRxicAFVBzkV6EWjcc/F/GMfskogXQHOLLdAK/6rOSoah3m1GfEB
 mWrigoUD0c6eVmMJeqWXfIxmJihpPkWKcijjv+aOuBKTC3PmWNmn2KAmzuKmBF/0AzFU
 Mq9Y4P7GyJlKppJ0Yvd92IzepZ0DQN0ZVRRwmUKYirYJx4+/6jxgWFlNXBL8paqf6qo3
 f+DRI5KpvnxyngyBTg91o3TXO4OVDGN8TvzWkTYkrNyvj0lZhgL04TT+kFaRRrrfiR8u HQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 33qcptw4yj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 23 Sep 2020 05:00:11 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08N4uOxi070114;
 Wed, 23 Sep 2020 05:00:10 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 33nuru241f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Sep 2020 05:00:10 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 08N503p5025876;
 Wed, 23 Sep 2020 05:00:03 GMT
Received: from localhost (/10.159.235.171)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 22 Sep 2020 22:00:03 -0700
Date: Tue, 22 Sep 2020 22:00:01 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20200923050001.GE7949@magnolia>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-6-willy@infradead.org>
 <163f852ba12fd9de5dec7c4a2d6b6c7cdb379ebc.camel@redhat.com>
 <20200922170526.GK32101@casper.infradead.org>
 <95bd1230f2fcf01f690770eb77696862b8fb607b.camel@redhat.com>
 <20200923024859.GM32101@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923024859.GM32101@casper.infradead.org>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9752
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009230037
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9752
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999
 adultscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 spamscore=0 malwarescore=0 clxscore=1011 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009230038
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [141.146.126.79 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -1.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kKwtT-0023Bg-Er
Subject: Re: [Jfs-discussion] [PATCH v2 5/9] iomap: Support arbitrarily many
 blocks per page
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
Cc: Christoph Hellwig <hch@infradead.org>, Dave Kleikamp <shaggy@kernel.org>,
 linux-nvdimm@lists.01.org, Qian Cai <cai@redhat.com>,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-next@vger.kernel.org, Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Sep 23, 2020 at 03:48:59AM +0100, Matthew Wilcox wrote:
> On Tue, Sep 22, 2020 at 09:06:03PM -0400, Qian Cai wrote:
> > On Tue, 2020-09-22 at 18:05 +0100, Matthew Wilcox wrote:
> > > On Tue, Sep 22, 2020 at 12:23:45PM -0400, Qian Cai wrote:
> > > > On Fri, 2020-09-11 at 00:47 +0100, Matthew Wilcox (Oracle) wrote:
> > > > > Size the uptodate array dynamically to support larger pages in the
> > > > > page cache.  With a 64kB page, we're only saving 8 bytes per page today,
> > > > > but with a 2MB maximum page size, we'd have to allocate more than 4kB
> > > > > per page.  Add a few debugging assertions.
> > > > > 
> > > > > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> > > > > Reviewed-by: Dave Chinner <dchinner@redhat.com>
> > > > 
> > > > Some syscall fuzzing will trigger this on powerpc:
> > > > 
> > > > .config: https://gitlab.com/cailca/linux-mm/-/blob/master/powerpc.config
> > > > 
> > > > [ 8805.895344][T445431] WARNING: CPU: 61 PID: 445431 at fs/iomap/buffered-
> > > > io.c:78 iomap_page_release+0x250/0x270
> > > 
> > > Well, I'm glad it triggered.  That warning is:
> > >         WARN_ON_ONCE(bitmap_full(iop->uptodate, nr_blocks) !=
> > >                         PageUptodate(page));
> > > so there was definitely a problem of some kind.
> > > 
> > > truncate_cleanup_page() calls
> > > do_invalidatepage() calls
> > > iomap_invalidatepage() calls
> > > iomap_page_release()
> > > 
> > > Is this the first warning?  I'm wondering if maybe there was an I/O error
> > > earlier which caused PageUptodate to get cleared again.  If it's easy to
> > > reproduce, perhaps you could try something like this?
> > > 
> > > +void dump_iomap_page(struct page *page, const char *reason)
> > > +{
> > > +       struct iomap_page *iop = to_iomap_page(page);
> > > +       unsigned int nr_blocks = i_blocks_per_page(page->mapping->host, page);
> > > +
> > > +       dump_page(page, reason);
> > > +       if (iop)
> > > +               printk("iop:reads %d writes %d uptodate %*pb\n",
> > > +                               atomic_read(&iop->read_bytes_pending),
> > > +                               atomic_read(&iop->write_bytes_pending),
> > > +                               nr_blocks, iop->uptodate);
> > > +       else
> > > +               printk("iop:none\n");
> > > +}
> > > 
> > > and then do something like:
> > > 
> > > 	if (bitmap_full(iop->uptodate, nr_blocks) != PageUptodate(page))
> > > 		dump_iomap_page(page, NULL);
> > 
> > This:
> > 
> > [ 1683.158254][T164965] page:000000004a6c16cd refcount:2 mapcount:0 mapping:00000000ea017dc5 index:0x2 pfn:0xc365c
> > [ 1683.158311][T164965] aops:xfs_address_space_operations ino:417b7e7 dentry name:"trinity-testfile2"
> > [ 1683.158354][T164965] flags: 0x7fff8000000015(locked|uptodate|lru)
> > [ 1683.158392][T164965] raw: 007fff8000000015 c00c0000019c4b08 c00c0000019a53c8 c000201c8362c1e8
> > [ 1683.158430][T164965] raw: 0000000000000002 0000000000000000 00000002ffffffff c000201c54db4000
> > [ 1683.158470][T164965] page->mem_cgroup:c000201c54db4000
> > [ 1683.158506][T164965] iop:none
> 
> Oh, I'm a fool.  This is after the call to detach_page_private() so
> page->private is NULL and we don't get the iop dumped.
> 
> Nevertheless, this is interesting.  Somehow, the page is marked Uptodate,
> but the bitmap is deemed not full.  There are three places where we set
> an iomap page Uptodate:
> 
> 1.      if (bitmap_full(iop->uptodate, i_blocks_per_page(inode, page)))
>                 SetPageUptodate(page);
> 
> 2.      if (page_has_private(page))
>                 iomap_iop_set_range_uptodate(page, off, len);
>         else
>                 SetPageUptodate(page);
> 
> 3.      BUG_ON(page->index);
> ...
>         SetPageUptodate(page);
> 
> It can't be #2 because the page has an iop.  It can't be #3 because the
> page->index is not 0.  So at some point in the past, the bitmap was full.
> 
> I don't think it's possible for inode->i_blksize to change, and you
> aren't running with THPs, so it's definitely not possible for thp_size()
> to change.  So i_blocks_per_page() isn't going to change.
> 
> We seem to have allocated enough memory for ->iop because that's also
> based on i_blocks_per_page().
> 
> I'm out of ideas.  Maybe I'll wake up with a better idea in the morning.
> I've been trying to reproduce this on x86 with a 1kB block size
> filesystem, and haven't been able to yet.  Maybe I'll try to setup a
> powerpc cross-compilation environment tomorrow.

FWIW I managed to reproduce it with the following fstests configuration
on a 1k block size fs on a x86 machinE:

SECTION      -- -no-sections-
FSTYP        -- xfs
MKFS_OPTIONS --  -m reflink=1,rmapbt=1 -i sparse=1 -b size=1024
MOUNT_OPTIONS --  -o usrquota,grpquota,prjquota
HOST_OPTIONS -- local.config
CHECK_OPTIONS -- -g auto
XFS_MKFS_OPTIONS -- -bsize=4096
TIME_FACTOR  -- 1
LOAD_FACTOR  -- 1
TEST_DIR     -- /mnt
TEST_DEV     -- /dev/sde
SCRATCH_DEV  -- /dev/sdd
SCRATCH_MNT  -- /opt
OVL_UPPER    -- ovl-upper
OVL_LOWER    -- ovl-lower
OVL_WORK     -- ovl-work
KERNEL       -- 5.9.0-rc4-djw

The kernel is more or less iomap-for-next.

--D


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
