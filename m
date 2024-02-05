Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88ABE8498D7
	for <lists+jfs-discussion@lfdr.de>; Mon,  5 Feb 2024 12:30:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rWxAR-00079S-IP;
	Mon, 05 Feb 2024 11:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1rWxAP-00079E-JW
 for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Feb 2024 11:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PuvWGMMI+zaICw2jjnJKQXMjVa2a5ulHTC1yOOEZxmU=; b=ekowfZ91ZDbdoXYZS9L51ZGf32
 4LnRPBy0kboRueDRVKLa6NJVXo5UFBM/KziBRSSnjDh2DbSAjCTBXwPZt5JPeCzMeSUO1p536g6/W
 0ZrFR8Ii2+Cew7CSaf14ggNPGvukBoh9y/oQfPD4q+p3Fz2BO1VDHjC4BeiuUnl/N6bA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PuvWGMMI+zaICw2jjnJKQXMjVa2a5ulHTC1yOOEZxmU=; b=IkA8EmwukV4JZN0kPYOlKWndO0
 EMoXv+LfFpGbhQg4KZOX1Xfeok5CNp7B8fFjfgEDrPQDqCK8BqLp4kqLMXzovef7Ea0jQ6Jy3NQrP
 XPcFFeQwHAq1N9QV4MZQnrnwQPNyg4Q7bIckp/wR7kZEyhBHJZP/Ik8EIkvyyj8UshKs=;
Received: from mgamail.intel.com ([192.198.163.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rWxAL-000495-Bi for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Feb 2024 11:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707132574; x=1738668574;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uF1gkyIrxXJK/4Bkw/24aNFO4Q92fF8zob3eSfbJaBw=;
 b=RSi0I1OlCXXvuILNTd2yPvQy6oxEQE1kfFHuLuD8FqFbmFMByhgv9rJb
 QHEXJOyxumUWGl75PwROu1V805ONeiWtS+goKkyeFCCZcQFl7+OwECdAN
 tBS0abCOA1ERAJhqLQPEEqXGXIhl59N0W4V5zDIUQyFPcLrEpc87rmajv
 UYz8PAkfWUZU5eCtIN0iYes354WMSjJdZM3LKQZgwxgo2xaXkHm/DtWIK
 i2Xs8sdIbhVsZ4AXAI7Gmf79HUmDRImE1CiMtq0YQ8lLQAKk+wdaJrcuN
 slW66Gs5qXS+jseUQXNXBCElQmcTUSrBeasEbUATB/EKkQfWL62MIAByG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="658641"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="658641"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 03:29:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="693581"
Received: from lkp-server01.sh.intel.com (HELO 01f0647817ea) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 05 Feb 2024 03:29:26 -0800
Received: from kbuild by 01f0647817ea with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rWxAB-0000RU-0P;
 Mon, 05 Feb 2024 11:29:23 +0000
Date: Mon, 5 Feb 2024 19:29:14 +0800
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Dave Kleikamp <shaggy@kernel.org>
Message-ID: <202402051937.xQSqcqKO-lkp@intel.com>
References: <20240201224605.4055895-7-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240201224605.4055895-7-willy@infradead.org>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Matthew, kernel test robot noticed the following build
 errors: [auto build test ERROR on kleikamp-shaggy/jfs-next] [also build test
 ERROR on linus/master v6.8-rc3 next-20240205] [If your patch is applied to
 the wrong git tree, kindly drop us a note. And when subm [...] 
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rWxAL-000495-Bi
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
 llvm@lists.linux.dev, "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Matthew,

kernel test robot noticed the following build errors:

[auto build test ERROR on kleikamp-shaggy/jfs-next]
[also build test ERROR on linus/master v6.8-rc3 next-20240205]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Matthew-Wilcox-Oracle/jfs-Convert-metapage_read_folio-to-use-folio-APIs/20240202-064805
base:   https://github.com/kleikamp/linux-shaggy jfs-next
patch link:    https://lore.kernel.org/r/20240201224605.4055895-7-willy%40infradead.org
patch subject: [PATCH 06/13] jfs: Convert drop_metapage and remove_metapage to take a folio
config: powerpc-allyesconfig (https://download.01.org/0day-ci/archive/20240205/202402051937.xQSqcqKO-lkp@intel.com/config)
compiler: clang version 19.0.0git (https://github.com/llvm/llvm-project 7dd790db8b77c4a833c06632e903dc4f13877a64)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240205/202402051937.xQSqcqKO-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402051937.xQSqcqKO-lkp@intel.com/

All errors (new ones prefixed by >>):

>> fs/jfs/jfs_metapage.c:128:24: error: incompatible pointer types passing 'struct page *' to parameter of type 'struct folio *' [-Werror,-Wincompatible-pointer-types]
     128 |                 folio_detach_private(&folio->page);
         |                                      ^~~~~~~~~~~~
   include/linux/pagemap.h:508:56: note: passing argument to parameter 'folio' here
     508 | static inline void *folio_detach_private(struct folio *folio)
         |                                                        ^
   1 error generated.


vim +128 fs/jfs/jfs_metapage.c

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
