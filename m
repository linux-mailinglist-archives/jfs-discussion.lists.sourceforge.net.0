Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A988475F7
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 Feb 2024 18:19:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVxCD-00070A-BD;
	Fri, 02 Feb 2024 17:19:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1rVxCC-000704-Ch
 for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Feb 2024 17:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bc/O6It+R+yY0bpkKBXlGcHgekqyVecWorjpW1dxvfo=; b=DyUAHBuspjFpBycjPJcZn1Z02M
 9QjNo/yxP4YXazoMU/Z07kWbeBNGeFIbQ85q6HPeH7wloWRa/7MtIomQWPwCFis/1KuW2QCkaHI4W
 ZiNynOrXg7mDQFdLa0YkoE+IwmKc6RhLzLfII+7AW0avlYVdl32gNKIdk8GrE+8+5hkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bc/O6It+R+yY0bpkKBXlGcHgekqyVecWorjpW1dxvfo=; b=WB9HHRqzR9P+RhGld5CX/xSNz2
 /i3Nk29MKUj5NPDZ/q2npJ1zwENLcBvrJNWUsUgAeFEcfJ/puQCU5X8m50E5tTOUJJlICzrhq1Dev
 UJV/FFApg1Sjztv+wvb63JVFSg/QUV7MzzVMM8pB/ZYWq5i5BELzIS8MYoDbm8fsoRTA=;
Received: from mgamail.intel.com ([198.175.65.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVxC7-0000lF-E6 for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Feb 2024 17:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706894356; x=1738430356;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mJgq3ofmCoWHQ4kNSmvNlxA1eQkDiJKs+jlZfxisP+I=;
 b=RP0TfS8qB2qnRktu70PW3sDvlJiaBldVS1NZxr4htLpynqD77t3+N7gr
 /SviCgnxUu2SV8UIz/KOU0RV7bGfx49n4YUqasMz1kwVa0hGNdCLp214j
 1wkOXysXDfvH4a6j+cGHYH0s2t/p0IglMNbfkFD7drNBxjAnBkUwszmke
 2uflMAYCDnPtqDT98ix4RfN3we79e5Rr1zELhYLoTesuvJ1WlYwh5Gx/5
 eVWtP/+6frLnRlTfv7TuCwFb78Po5WtKt9XwH3roWdvLsndSWKBrhj79Q
 D6qdAmp7tT8HF2lbls/agPpzE+OeGaQTbxBOhMsPF2KvDjKu+aSejYNNA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="116504"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="116504"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 09:19:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="129837"
Received: from lkp-server02.sh.intel.com (HELO 59f4f4cd5935) ([10.239.97.151])
 by orviesa010.jf.intel.com with ESMTP; 02 Feb 2024 09:19:01 -0800
Received: from kbuild by 59f4f4cd5935 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rVxBq-00045q-2J;
 Fri, 02 Feb 2024 17:18:58 +0000
Date: Sat, 3 Feb 2024 01:18:58 +0800
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Dave Kleikamp <shaggy@kernel.org>
Message-ID: <202402030124.yWFowXZd-lkp@intel.com>
References: <20240201224605.4055895-7-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240201224605.4055895-7-willy@infradead.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Matthew, kernel test robot noticed the following build
 errors: [auto build test ERROR on kleikamp-shaggy/jfs-next] [also build test
 ERROR on linus/master v6.8-rc2 next-20240202] [If your patch is applied to
 the wrong git tree, kindly drop us a note. And when subm [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rVxC7-0000lF-E6
Subject: Re: [Jfs-discussion] [PATCH 06/13] jfs: Convert drop_metapage and
 remove_metapage to take a folio
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
From: kernel test robot via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: kernel test robot <lkp@intel.com>
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Matthew,

kernel test robot noticed the following build errors:

[auto build test ERROR on kleikamp-shaggy/jfs-next]
[also build test ERROR on linus/master v6.8-rc2 next-20240202]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Matthew-Wilcox-Oracle/jfs-Convert-metapage_read_folio-to-use-folio-APIs/20240202-064805
base:   https://github.com/kleikamp/linux-shaggy jfs-next
patch link:    https://lore.kernel.org/r/20240201224605.4055895-7-willy%40infradead.org
patch subject: [PATCH 06/13] jfs: Convert drop_metapage and remove_metapage to take a folio
config: loongarch-defconfig (https://download.01.org/0day-ci/archive/20240203/202402030124.yWFowXZd-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240203/202402030124.yWFowXZd-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402030124.yWFowXZd-lkp@intel.com/

All errors (new ones prefixed by >>):

   fs/jfs/jfs_metapage.c: In function 'remove_metapage':
>> fs/jfs/jfs_metapage.c:128:38: error: passing argument 1 of 'folio_detach_private' from incompatible pointer type [-Werror=incompatible-pointer-types]
     128 |                 folio_detach_private(&folio->page);
         |                                      ^~~~~~~~~~~~
         |                                      |
         |                                      struct page *
   In file included from include/linux/buffer_head.h:15,
                    from fs/jfs/jfs_metapage.c:14:
   include/linux/pagemap.h:508:56: note: expected 'struct folio *' but argument is of type 'struct page *'
     508 | static inline void *folio_detach_private(struct folio *folio)
         |                                          ~~~~~~~~~~~~~~^~~~~
   cc1: some warnings being treated as errors


vim +/folio_detach_private +128 fs/jfs/jfs_metapage.c

   114	
   115	static inline void remove_metapage(struct folio *folio, struct metapage *mp)
   116	{
   117		struct meta_anchor *a = mp_anchor(&folio->page);
   118		int l2mp_blocks = L2PSIZE - folio->mapping->host->i_blkbits;
   119		int index;
   120	
   121		index = (mp->index >> l2mp_blocks) & (MPS_PER_PAGE - 1);
   122	
   123		BUG_ON(a->mp[index] != mp);
   124	
   125		a->mp[index] = NULL;
   126		if (--a->mp_count == 0) {
   127			kfree(a);
 > 128			folio_detach_private(&folio->page);
   129			kunmap(&folio->page);
   130		}
   131	}
   132	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
