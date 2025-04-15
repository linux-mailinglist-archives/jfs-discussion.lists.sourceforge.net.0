Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A64A8A921
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Apr 2025 22:19:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u4mk3-0001B8-M8;
	Tue, 15 Apr 2025 20:18:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1u4mk1-0001B1-Hu
 for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Apr 2025 20:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HUCgCm5eBLHBStR2O91yMADuZKW/BMOxTb52gGuSDa0=; b=l84QlZZQ0Pb3xnndOUyGY/bDFR
 BuR4gEXCYdrKtJ5TZImk/dXxa+PNxq/Bxc6KSrQ7CRbl5MrlOIRP7Hd7igDdJZk4JLOzj1aCmRUQ8
 JHAVu+AcQoF0pY/zCjrWQLWzesYgXP+DWMm5rV9QxFNbXB6aUlYZcZTvdWFTuF8U6hBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HUCgCm5eBLHBStR2O91yMADuZKW/BMOxTb52gGuSDa0=; b=H+VJcD9CW5Kwb4TF1nOjKkMXd/
 kMaHHJlHTKJpT+QM1DcVth2L1ReIuVnp5Q/Tnltcod9Ehw1v3ZzJma2iV/KRTv/EvDiO46YxGfA/1
 sGRqef2qZ4HxSEjsOlszun4n7fJkdR7zUtkxv4dY36ozoy9T6kZLot1ABksoYo2PgbI4=;
Received: from mail-pl1-f172.google.com ([209.85.214.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u4mjk-0003KY-Q1 for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Apr 2025 20:18:44 +0000
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-2254e0b4b79so82028745ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 15 Apr 2025 13:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744748303; x=1745353103; darn=lists.sourceforge.net;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=HUCgCm5eBLHBStR2O91yMADuZKW/BMOxTb52gGuSDa0=;
 b=ZNvOK049oxge1R09cWOI5kn+OjigI22NFBV8SfhYpsEGO34RlH+kq6+WsyjNi6SGJK
 FjK1glHiOj73TdUh169hKLrgPzVXcVr6vXg2/srS7SSpTz44yhWZKGNMWm4SbSez4MT8
 51f0DIeczX/l3wxpw/jRdxJhuy5RGbTEfW6HwGbos7Z08ez13zxHRLJjRV6PKT3sNN7R
 6abI6aMsHVO8W1n6zDMwnoFppNdnFqCqNxZ1MP4IaQM05v1fomAxo3TI5C9O5SlVAjOo
 Dc5z5h4IT7PA2IQCLogeSuihehcK2jrDCc1yCFCQhCN+p3fWRemNAEYHzLGgCd/4ELBZ
 N/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744748303; x=1745353103;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HUCgCm5eBLHBStR2O91yMADuZKW/BMOxTb52gGuSDa0=;
 b=VdVRIhDjY9WqUpubZh5PfCaxXMIboxms6rCestwoCYaH8qeOKUYPswxgypNqB9nQTG
 WrpXKdwsftNUXcUfjdRJeZO3EbA1Hx2WBOVcM5RtqCruoN7hb9NyQCxLoXahsd/r7tBI
 GlDURqAyPfnF4XMd8zCCfds5PP1sck10A2jkjYZLCcftG5//9VSQdyvc/feTeZ5ToBKj
 3Dl0Y1Qadl1g4N0VHirfyXZqWV8eivR+MSs99O49QVqNRk8xqnq+EutuFEg4aBLpsrBO
 8hw1GuXzWwwIsd/rhMxobyIHEIOm2gtuzEXxyz7bOYn5aYFFSBPQ7vTaOa3mvl+Z44xc
 ezpA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGf85Sp3nPIAzBdkM1N9FbnHAyP1meOhHUjtt+0EylBoN0aeyXUHG4okcdHEkQHcUl9+h+CST0FIjU1siayw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzrGkrbuWE+454n2X68lGj/iLI+61g12rA2cJtSgZlvQeBWFpgo
 7P/s2pcRbrM/d5roNmItK5TQIr4+DIxafJS3yNuTzzXF4nsETPZw
X-Gm-Gg: ASbGncsdrU2dmFqK73rcjZtBkgIxZQ6P231APHSmH6dco6YFWK6NochLmx6ZqshglNZ
 aLIv6jfGTCsgTUsundUi31U73y/MJuh2vshFv6OthksWx3PGL/GlROv4NrSAl6Q4j0qk0ZMHcB1
 XUVnKRrAwxsySn8NGrUwWQcc/1yAnHaAP8Xc45jXx8Cm93Q5PsQ74nEnLeJ0tDaaQh+GddCefWx
 +x45bLa0b2fp8VCYxT3FIWtE7PooDgo+C1nifknrTlOlmza7YOQs5+FxBVFT7z4bbElZGO4AKRs
 x5p/zUnTMJF88ueW02zCdHgwZBrGZMKWIJA+W/OEm3GIuBTgRz4=
X-Google-Smtp-Source: AGHT+IH/ytHBXGU5OM/n668fjd1qsrWG9AAAgNczpgx3aah4xfC2RHe6JCsWXKntuyYTDtniSeWVWA==
X-Received: by 2002:a17:903:bd0:b0:224:192a:9154 with SMTP id
 d9443c01a7336-22c319f6538mr5544235ad.26.1744748303103; 
 Tue, 15 Apr 2025 13:18:23 -0700 (PDT)
Received: from [192.168.68.119] ([49.207.215.199])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73bd21c5e8dsm9219018b3a.59.2025.04.15.13.18.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Apr 2025 13:18:22 -0700 (PDT)
Message-ID: <672c16c5896fb2ce73c9fab62853230164b99629.camel@gmail.com>
To: stable@vger.kernel.org
Date: Wed, 16 Apr 2025 01:48:18 +0530
In-Reply-To: <20250415180939.397586-1-duttaditya18@gmail.com>
References: <20250415180939.397586-1-duttaditya18@gmail.com>
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot checked the patch against 5.15.y and confirmed that
 the reproducer did not trigger any issues. check here: 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [duttaditya18[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.172 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.172 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [duttaditya18[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.172 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.172 listed in wl.mailspike.net]
X-Headers-End: 1u4mjk-0003KY-Q1
Subject: Re: [Jfs-discussion] [PATCH 5.15.y] jfs: define xtree root and page
 independently
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
From: Aditya Dutt via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Aditya Dutt <duttaditya18@gmail.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Manas Ghandat <ghandatmanas@gmail.com>, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot checked the patch against 5.15.y and confirmed that the
reproducer did not trigger any issues. check here:
https://lore.kernel.org/lkml/67fea0bf.050a0220.186b78.0006.GAE@google.com/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
